using Pkg
cd(@__DIR__)
Pkg.activate(".")
Pkg.instantiate()
Pkg.precompile()

using Documenter, DomainColoringToy

makedocs(
  sitename = "DomainColoringToy.jl",
  authors = "Evert Provoost",
  repo="https://github.com/eprovst/DomainColoringToy.jl/blob/{commit}{path}#{line}",
  format=Documenter.HTML(
    repolink="https://github.com/eprovst/DomainColoringToy.jl/",
    prettyurls=get(ENV, "CI", "false") == "true",
    canonical="https://eprovst.github.io/DomainColoringToy.jl",
    assets=["assets/style.css",]
  ),
  pages = [
    hide("Home" => "index.md"),
    "Library" => "lib.md",
  ]
)

deploydocs(
  repo = "github.com/eprovst/DomainColoringToy.jl.git",
  push_preview = true,
  versions = ["stable" => "v^", "v1.#", "dev" => "dev"],
)
