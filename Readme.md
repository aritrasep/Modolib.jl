# Multiobjective Discrete Optimization Instances Library in Julia #

**Build Status:** 
[![Build Status](https://travis-ci.org/aritrasep/Modolib.jl.svg?branch=master)](https://travis-ci.org/aritrasep/Modolib.jl)

**Documentation:**
[![](https://img.shields.io/badge/docs-stable-blue.svg)](https://aritrasep.github.io/Modolib.jl/docs/build/)

**DOI:** 
[![DOI](https://zenodo.org/badge/83517990.svg)](https://zenodo.org/badge/latestdoi/83517990)

`Modolib.jl` is a collection of instances and their efficient frontiers ( if available ) of various classes of Multi Objective Pure Integer and Mixed Integer Programs. The instances are returned as either a subtype of `MOOInstance` or a subtype of `BOOInstance`.

Following classes of instances are currently available through `Modolib.jl`

1. Biobjective Binary Programs (BOBP):
	1. Biobjective Assignment Problems (BOAP)
	2. Biobjective Knapsack Problems (BOKP)
	3. Biobjective Multi Dimensional Knapsack Problems (BOKP)
	4. Biobjective Set Covering Problems (BOSCP)
	5. Biobjective Set Packing Problems (BOSPP)
2. Biobjective Mixed Binary Programs (BOMBP):
	1. Biobjective Mixed Binary Linear Programming Instance (BOMIP)
	2. Biobjective Uncapacitated Facility Location Problem (BOUFLP)
3. Multiobjective Binary Programs (MOBP):
	1. Multiobjective Assignment Problems (MOAP)
	2. Multiobjective Knapsack Problems (MOKP)
4. Multiobjective Mixed Binary Programs (MOMBP)
	
`Modolib.jl` can generate the following classes of random instances:

1. Multiobjective and Biobjective Multi Dimensional Knapsack Problems
2. Multiobjective General Mixed Binary Instance

## Dependencies: ##

1. [Julia v0.6.0](https://julialang.org/downloads/)

## Installation ##

Once, Julia v0.6.0 has been properly installed, the following instructions in a **Julia** terminal will install **Modolib.jl** on the local machine:

```julia
Pkg.clone("https://github.com/aritrasep/Modolib.jl")
Pkg.build("Modolib")
```

In case `Pkg.build("Modolib")` gives you an error on Linux, you may need to install the GMP library headers. For example, on Ubuntu/Debian and similar, give the following command from a terminal:

```
$ sudo apt-get install libgmp-dev
```

After that, restart the installation of the package with:

```
Pkg.build("Modolib")
```

## Supporting and Citing: ##

The software in this ecosystem was developed as part of academic research. If you would like to help support it, please star the repository as such metrics may help us secure funding in the future. If you use [Modof.jl](https://github.com/aritrasep/Modof.jl), [Modolib.jl](https://github.com/aritrasep/Modolib.jl), [FPBH.jl](https://github.com/aritrasep/FPBH.jl), [FPBHCPLEX.jl](https://github.com/aritrasep/FPBHCPLEX.jl) or [pyModofSup.jl](https://github.com/aritrasep/pyModofSup.jl) software as part of your research, teaching, or other activities, we would be grateful if you could cite:

1. [Pal, A. and Charkhgard, H., A Feasibility Pump and Local Search Based Heuristic for Bi-objective Pure Integer Linear Programming](http://www.optimization-online.org/DB_FILE/2017/03/5902.pdf).
2. [Pal, A. and Charkhgard, H., FPBH.jl: A Feasibility Pump based Heuristic for Multi-objective Mixed Integer Linear Programming in Julia](http://www.optimization-online.org/DB_FILE/2017/09/6195.pdf)

## Contributions ##

This package is written and maintained by [Aritra Pal](https://github.com/aritrasep). Please fork and send a pull request or create a [GitHub issue](https://github.com/aritrasep/Modolib.jl/issues) for bug reports or feature requests.
