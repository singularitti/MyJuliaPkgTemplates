```@meta
CurrentModule = {{{PKG}}}
```

# {{{PKG}}}

Documentation for [{{{PKG}}}](https://github.com/MineralsCloud/{{{PKG}}}.jl).

See the [Index](@ref main-index) for the complete list of documented functions
and types.

The code is [hosted on GitHub](https://github.com/{{{org}}}/{{{PKG}}}.jl),
with some continuous integration services to test its validity.

This repository is created and maintained by [singularitti](https://github.com/singularitti).
You are very welcome to contribute.

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

- [**STABLE**](https://{{{org}}}.github.io/{{{PKG}}}.jl/stable) &mdash; **documentation of the most recently tagged version.**
- [**DEV**](https://{{{org}}}.github.io/{{{PKG}}}.jl/dev) &mdash; _documentation of the in-development version._

## Project Status

The package is tested against, and being developed for, Julia `1.6` and above on Linux,
macOS, and Windows.

## Questions and Contributions

Usage questions can be posted on
[our discussion page](https://github.com/MineralsCloud/{{{PKG}}}.jl/discussions).

Contributions are very welcome, as are feature requests and suggestions. Please open an
[issue](https://github.com/MineralsCloud/{{{PKG}}}.jl/issues)
if you encounter any problems. The [contributing](@ref) page has
a few guidelines that should be followed when opening pull requests and contributing code.

## Manual Outline

```@contents
Pages = [
    "installation.md",
    "contributing.md",
    "troubleshooting.md",
]
Depth = 3
```

## Library Outline

```@contents
Pages = ["public.md"]
```

### [Index](@id main-index)

```@index
Pages = ["public.md"]
```
