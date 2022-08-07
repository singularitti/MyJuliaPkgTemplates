using PkgTemplates
using PkgTemplates: Plugin, default_file, gen_file, render_file, combined_view, tags, @plugin, @with_kw_noshow
import PkgTemplates: view, hook

default_dir() = joinpath(pwd(), "templates")

@plugin struct MyDocs <: Plugin
    index_md::String = joinpath(default_dir(), "docs", "src", "index2.md")
    installation_md::String = joinpath(default_dir(), "docs", "src", "installation.md")
    contributing_md::String = joinpath(default_dir(), "docs", "src", "contributing.md")
    troubleshooting_md::String = joinpath(default_dir(), "docs", "src", "troubleshooting.md")
end

view(::MyDocs, t::Template, pkg::AbstractString) = Dict(
    "org" => t.user,
    "PKG" => pkg,
    "jl" => "1.6.7"
)

function hook(p::MyDocs, t::Template, pkg_dir::AbstractString)
    pkg = basename(pkg_dir)
    for field in fieldnames(MyDocs)
        value = getfield(p, field)
        @show split(getfield(p, field), '/')[9:end]
        path = joinpath(pkg_dir, split(getfield(p, field), '/')[9:end]...)
        file = render_file(value, combined_view(p, t, pkg), tags(p))
        gen_file(path, file)
    end
end

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
