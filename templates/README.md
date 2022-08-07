# {{{PKG}}}

|                                 **Documentation**                                  |                                                                                                 **Build Status**                                                                                                 |                  **LICENSE**                  |
| :--------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------: |
| [![Stable][docs-stable-img]][docs-stable-url] [![Dev][docs-dev-img]][docs-dev-url] | [![Build Status][gha-img]][gha-url] [![Build Status][appveyor-img]][appveyor-url] [![Build Status][cirrus-img]][cirrus-url] [![pipeline status][gitlab-img]][gitlab-url] [![Coverage][codecov-img]][codecov-url] | [![GitHub license][license-img]][license-url] |

[docs-stable-img]: https://img.shields.io/badge/docs-stable-blue.svg
[docs-stable-url]: https://{{{USER}}}.github.io/{{{PKG}}}.jl/stable
[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg
[docs-dev-url]: https://{{{USER}}}.github.io/{{{PKG}}}.jl/dev
[gha-img]: https://github.com/{{{USER}}}/{{{PKG}}}.jl/workflows/CI/badge.svg
[gha-url]: https://github.com/{{{USER}}}/{{{PKG}}}.jl/actions
[appveyor-img]: https://ci.appveyor.com/api/projects/status/github/{{{USER}}}/{{{PKG}}}.jl?svg=true
[appveyor-url]: https://ci.appveyor.com/project/singularitti/{{{PKG}}}-jl
[cirrus-img]: https://api.cirrus-ci.com/github/{{{USER}}}/{{{PKG}}}.jl.svg
[cirrus-url]: https://cirrus-ci.com/github/{{{USER}}}/{{{PKG}}}.jl
[gitlab-img]: https://gitlab.com/singularitti/{{{PKG}}}.jl/badges/master/pipeline.svg
[gitlab-url]: https://gitlab.com/singularitti/{{{PKG}}}.jl/-/pipelines
[codecov-img]: https://codecov.io/gh/{{{USER}}}/{{{PKG}}}.jl/branch/master/graph/badge.svg
[codecov-url]: https://codecov.io/gh/{{{USER}}}/{{{PKG}}}.jl
[license-img]: https://img.shields.io/github/license/{{{USER}}}/{{{PKG}}}.jl
[license-url]: https://github.com/{{{USER}}}/{{{PKG}}}.jl/blob/master/LICENSE

## Installation

The package can be installed with the Julia package manager.
From the Julia REPL, type `]` to enter the Pkg REPL mode and run:

```
pkg> add {{{PKG}}}
```

Or, equivalently, via the `Pkg` API:

```julia
julia> import Pkg; Pkg.add("{{{PKG}}}")
```

## Documentation

- [**STABLE**][docs-stable-url] &mdash; **documentation of the most recently tagged version.**
- [**DEV**][docs-dev-url] &mdash; _documentation of the in-development version._

## Project Status

The package is tested against, and being developed for, Julia `1.6` and above on Linux,
macOS, and Windows.

## Questions and Contributions

Usage questions can be posted on [our discussion page][discussions-url].

Contributions are very welcome, as are feature requests and suggestions. Please open an
[issue][issues-url] if you encounter any problems. The [contributing](@ref) page has
a few guidelines that should be followed when opening pull requests and contributing code.

[discussions-url]: https://github.com/{{{USER}}}/{{{PKG}}}.jl/discussions
[issues-url]: https://github.com/{{{USER}}}/{{{PKG}}}.jl/issues
[contrib-url]: https://github.com/{{{USER}}}/{{{PKG}}}.jl/discussions
