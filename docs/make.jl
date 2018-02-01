using Documenter, Modolib

makedocs(modules=[Modolib],
         doctest = false,
         format = :html,
         sitename = "Modolib",
         authors = "Aritra Pal",
         pages = Any[
        "Home" => "index.md",
        "Biobjective Binary Programming Instances" => "bobp.md",
        "Biobjective Mixed Binary Programming Instances" => "bombp.md",
        "Multiobjective Binary Programming Instances" => "mobp.md",
        "Multiobjective Mixed Binary Programming Instances" => "mombp.md",
        "Random Instance Generators" => "random.md",
        "Reading and Writing Instances" => "api.md"
    ])
    	
deploydocs(
	repo = "github.com/aritrasep/Modolib.jl.git",
    target = "build",
    osname = "linux",
    julia  = "0.6",
    deps   = nothing,
    make   = nothing,
)
