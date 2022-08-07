using PkgTemplates
using PkgTemplates: Plugin, default_file, @plugin, @with_kw_noshow
import PkgTemplates: view

@plugin struct MyDocs <: Plugin
    readme_md::String = default_file("README.md")
    index_md::String = default_file("docs", "src", "index.md")
    installation_md::String = default_file("docs", "src", "installation.md")
    contributing_md::String = default_file("docs", "src", "contributing.md")
    troubleshooting_md::String = default_file("docs", "src", "troubleshooting.md")
end

view(::MyDocs, t::Template, pkg::AbstractString) = Dict(
    "org" => t.user,
    "PKG" => pkg,
    "jl" => "1.6.7"
)

t = Template(;
    user="MineralsCloud",
    plugins=[
        License(),
        Git(),
        GitHubActions(; x86=true, osx=true, windows=true, extra_versions=["1.0", "1.3", "1.4", "1.6", "1.7", "nightly"]),
        Codecov(),
        Documenter{GitHubActions}(),
        AppVeyor(; x86=true, extra_versions=["1.0", "1.1", "1.5", "nightly"]),
        CirrusCI(; extra_versions=["1.1", "1.4", "1.5", "nightly"], image="freebsd-12-1-release-amd64"),
        GitLabCI(; extra_versions=["1.2", "1.3", "1.6", "1.7"]),
        CompatHelper(),
        RegisterAction(),
        PkgEvalBadge(),
        ColPracBadge(),
        TagBot(),
        MyDocs(),
    ]
)
