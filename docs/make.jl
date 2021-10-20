using TDD
using Documenter

DocMeta.setdocmeta!(TDD, :DocTestSetup, :(using TDD); recursive=true)

makedocs(;
    modules=[TDD],
    authors="jamiecm17 <moffajamie@gmail.com> and contributors",
    repo="https://github.com/jamiecm17/TDD.jl/blob/{commit}{path}#{line}",
    sitename="TDD.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://jamiecm17.github.io/TDD.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jamiecm17/TDD.jl",
    devbranch="master",
)
