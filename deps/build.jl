if !("Modof" in keys(Pkg.installed()))
	Pkg.clone("https://github.com/aritrasep/Modof.jl")
	Pkg.build("Modof")
end
