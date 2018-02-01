# Multiobjective Discrete Optimization Instances Library in Julia #

`Modolib.jl` is a collection of instances and their efficient frontiers ( if available ) of various classes of Multi Objective Pure Integer and Mixed Integer Programs. The instances are returned as either a subtype of `MOOInstance` or a subtype of `BOOInstance`.

Following classes of instances are currently available through `Modolib.jl`

1. Biobjective Assignment Problems (BOAP)
2. Biobjective Knapsack Problems (BOKP)
3. Biobjective Multi Dimensional Knapsack Problems (BOKP)
4. Biobjective Set Covering Problems (BOSCP)
5. Biobjective Set Packing Problems (BOSPP)
6. Biobjective Mixed Binary Programming Instance (BOMBP)
7. Biobjective Uncapacitated Facility Location Problem (BOUFLP)
8. Multiobjective Assignment Problems (MOAP)
9. Multiobjective Knapsack Problems (MOKP)
10. Multiobjective Mixed Binary Programming Instance (MOMBP)
	
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

## Contents: ##

```@contents
Pages = ["bobp.md", "bombp.md", "mobp.md", "mombp.md", "random.md", "api.md"]
```

## Supporting and Citing: ##

The software in this ecosystem was developed as part of academic research. If you would like to help support it, please star the repository as such metrics may help us secure funding in the future. If you use [Modof.jl](https://github.com/aritrasep/Modof.jl), [Modolib.jl](https://github.com/aritrasep/Modolib.jl), [FPBH.jl](https://github.com/aritrasep/FPBH.jl), [FPBHCPLEX.jl](https://github.com/aritrasep/FPBHCPLEX.jl) or [pyModofSup.jl](https://github.com/aritrasep/pyModofSup.jl) software as part of your research, teaching, or other activities, we would be grateful if you could cite:

1. [Pal, A. and Charkhgard, H., A Feasibility Pump and Local Search Based Heuristic for Bi-objective Pure Integer Linear Programming](http://www.optimization-online.org/DB_FILE/2017/03/5902.pdf).
2. [Pal, A. and Charkhgard, H., FPBH.jl: A Feasibility Pump based Heuristic for Multi-objective Mixed Integer Linear Programming in Julia](http://www.optimization-online.org/DB_FILE/2017/09/6195.pdf)

## Contributions ##

This package is written and maintained by [Aritra Pal](https://github.com/aritrasep). Please fork and send a pull request or create a [GitHub issue](https://github.com/aritrasep/Modolib.jl/issues) for bug reports or feature requests.

## Index: ##

```@index
```

## Important Note about the Instances ##

**Most of these instances are taken from different sources. We have uploaded these instances here to make life easier for users by giving them an easier access. However, it is the responsibility of all users to refer to the original website and follow the rules (or any license) defined by the (true) owners of these instances.** The details of the instances are mentioned below:

| Type of Problem | Number of Classes | Instances for each Class | Total Instances | Online Source | Please Cite |
|-------------------------------------------------------|:-----:|:------------------------:|:---------------:|:----------------------------------------------------------------------------------------------------------------------------:|:------------:|
| Biobjective Assignment Problem | 4 | 5 | 20 | [4](http://ogma.newcastle.edu.au:8080/vital/access/manager/Repository/uon:13218?exact=sm_creator%3A%22Charkhgard%2C+Hadi%22) | [^article4] |
| Biobjective 1-D Knapsack | 4 | 1 | 4 | [1](http://pagesperso.lina.univ-nantes.fr/info/perso/permanents/jorge/bikp/1A.html) | [^article1] |
| Biobjective 1-D Knapsack | 10 | 4 | 40 | [2](http://pagesperso.lina.univ-nantes.fr/info/perso/permanents/jorge/bikp/1B.html) | [^article2] |
| Biobjective 1-D Knapsack | 1 | 20 | 20 | [3](http://pagesperso.lina.univ-nantes.fr/info/perso/permanents/jorge/bikp/2.html) | [^article3] |
| Biobjective 1-D Knapsack | 1 | 15 | 15 | [3](http://pagesperso.lina.univ-nantes.fr/info/perso/permanents/jorge/bikp/2.html) | [^article3] |
| Biobjective 1-D Knapsack | 1 | 3 | 3 | [3](http://pagesperso.lina.univ-nantes.fr/info/perso/permanents/jorge/bikp/2.html) | [^article3] |
| Biobjective 2-D Knapsack | 4 | 5 | 20 | [4](http://ogma.newcastle.edu.au:8080/vital/access/manager/Repository/uon:13218?exact=sm_creator%3A%22Charkhgard%2C+Hadi%22) | [^article4] |
| Biobjective Set Covering | 3 | 4 | 12 | [5](http://xgandibleux.free.fr/MOCOlib/MOSCP.html) | [^article5] |
| Biobjective Set Packing | 20 | 6 | 120 | [6](http://www.emse.fr/~delorme/SetPacking.html#BOSPP) | [^article6] |
| Biobjective Mixed Integer Programs | 5 | 5 | 25 | [4](http://ogma.newcastle.edu.au:8080/vital/access/manager/Repository/uon:13218?exact=sm_creator%3A%22Charkhgard%2C+Hadi%22) | [^article7] |
| Biobjective Uncapacitated Facility Location Problem | 3 | 4 | 12 | [4](http://ogma.newcastle.edu.au:8080/vital/access/manager/Repository/uon:13218?exact=sm_creator%3A%22Charkhgard%2C+Hadi%22) | [^article7] |
| Biobjective Best Subset Selection ( Hadi Instances )  | 3 | 3 | 9 | [8](http://www.optimization-online.org/DB_HTML/2017/05/6040.html) | [^article8] |
| Multiobjective Assignment Problem | 10 | 10 | 100 | [9](http://home.ku.edu.tr/~moolibrary/) | [^article9] |
| Multiobjective 1-D Knapsack | 16 | 10 | 160 | [9](http://home.ku.edu.tr/~moolibrary/) | [^article9] |

## References: ##

[^article1]: Gandibleux, Xavier, and Arnaud Freville. "Tabu search based procedure for solving the 0-1 multiobjective knapsack problem: the two objectives case." Journal of Heuristics 6.3 (2000): 361-383. 
[^article2]: F. Degoutin and X. Gandibleux. Un retour d'expériences sur la résolution de problèmes combinatoires bi-objectifs. Journée Programmation Mathématique Multiobjectifs (PM2O). May 17th, 2002, Angers, France.
[^article3]: Captivo, M. Eugénia, et al. "Solving bicriteria 0–1 knapsack problems using a labeling algorithm." Computers & Operations Research 30.12 (2003): 1865-1886.
[^article4]: Boland, Natashia, Hadi Charkhgard, and Martin Savelsbergh. "A criterion space search algorithm for biobjective integer programming: The balanced box method." INFORMS Journal on Computing 27.4 (2015): 735-754.
[^article5]: Soylu, Banu. "Heuristic approaches for biobjective mixed 0–1 integer linear programming problems." European Journal of Operational Research 245.3 (2015): 690-703.
[^article6]: Delorme, Xavier, Xavier Gandibleux, and Fabien Degoutin. "Evolutionary, constructive and hybrid procedures for the bi-objective set packing problem." European Journal of Operational Research 204.2 (2010): 206-217.
[^article7]: Boland, Natashia, Hadi Charkhgard, and Martin Savelsbergh. "A criterion space search algorithm for biobjective mixed integer programming: The triangle splitting method." INFORMS Journal on Computing 27.4 (2015): 597-618.
[^article8]: Hadi Charkhgard, Ali Eshragh. Best subset selection via bi-objective mixed integer linear programming. Submitted to Operations Research Letters.
[^article9]: Kirlik, Gokhan, and Serpil Sayın. "A new algorithm for generating all nondominated solutions of multiobjective discrete optimization problems." European Journal of Operational Research 232.3 (2014): 479-488.
