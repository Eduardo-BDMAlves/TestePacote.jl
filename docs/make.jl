using TestePacote
using Documenter

DocMeta.setdocmeta!(TestePacote, :DocTestSetup, :(using TestePacote); recursive = true)

const page_rename = Dict("developer.md" => "Developer docs") # Without the numbers

makedocs(;
    modules = [TestePacote],
    authors = "Eduardo <eduardo.alves@polo.ufsc.br> and contributors",
    repo = "https://github.com/Eduardo-BDMAlves/TestePacote.jl/blob/{commit}{path}#{line}",
    sitename = "TestePacote.jl",
    format = Documenter.HTML(;
        canonical = "https://Eduardo-BDMAlves.github.io/TestePacote.jl",
    ),
    pages = [
        "index.md"
        [
            file for file in readdir(joinpath(@__DIR__, "src")) if
            file != "index.md" && splitext(file)[2] == ".md"
        ]
    ],
)

deploydocs(; repo = "github.com/Eduardo-BDMAlves/TestePacote.jl")
