var documenterSearchIndex = {"docs": [

{
    "location": "index.html#",
    "page": "Home",
    "title": "Home",
    "category": "page",
    "text": ""
},

{
    "location": "index.html#Multiobjective-Discrete-Optimization-Instances-Library-in-Julia-1",
    "page": "Home",
    "title": "Multiobjective Discrete Optimization Instances Library in Julia",
    "category": "section",
    "text": "Modolib.jl is a collection of instances and their efficient frontiers ( if available ) of various classes of Multi Objective Pure Integer and Mixed Integer Programs. The instances are returned as either a subtype of MOOInstance or a subtype of BOOInstance.Following classes of instances are currently available through Modolib.jlBiobjective Assignment Problems (BOAP)\nBiobjective Knapsack Problems (BOKP)\nBiobjective Multi Dimensional Knapsack Problems (BOKP)\nBiobjective Set Covering Problems (BOSCP)\nBiobjective Set Packing Problems (BOSPP)\nBiobjective Mixed Binary Programming Instance (BOMBP)\nBiobjective Uncapacitated Facility Location Problem (BOUFLP)\nMultiobjective Assignment Problems (MOAP)\nMultiobjective Knapsack Problems (MOKP)\nMultiobjective Mixed Binary Programming Instance (MOMBP)Modolib.jl can generate the following classes of random instances:Multiobjective and Biobjective Multi Dimensional Knapsack Problems\nMultiobjective General Mixed Binary Instance"
},

{
    "location": "index.html#Dependencies:-1",
    "page": "Home",
    "title": "Dependencies:",
    "category": "section",
    "text": "Julia v0.6.0"
},

{
    "location": "index.html#Installation-1",
    "page": "Home",
    "title": "Installation",
    "category": "section",
    "text": "Once, Julia v0.6.0 has been properly installed, the following instructions in a Julia terminal will install Modolib.jl on the local machine:Pkg.clone(\"https://github.com/aritrasep/Modolib.jl\")\nPkg.build(\"Modolib\")"
},

{
    "location": "index.html#Contents:-1",
    "page": "Home",
    "title": "Contents:",
    "category": "section",
    "text": "Pages = [\"bobp.md\", \"bombp.md\", \"mobp.md\", \"mombp.md\", \"random.md\", \"api.md\"]"
},

{
    "location": "index.html#Supporting-and-Citing:-1",
    "page": "Home",
    "title": "Supporting and Citing:",
    "category": "section",
    "text": "The software in this ecosystem was developed as part of academic research. If you would like to help support it, please star the repository as such metrics may help us secure funding in the future. If you use Modof.jl, Modolib.jl, FPBH.jl, FPBHCPLEX.jl or pyModofSup.jl software as part of your research, teaching, or other activities, we would be grateful if you could cite:Pal, A. and Charkhgard, H., A Feasibility Pump and Local Search Based Heuristic for Bi-objective Pure Integer Linear Programming.\nPal, A. and Charkhgard, H., FPBH.jl: A Feasibility Pump based Heuristic for Multi-objective Mixed Integer Linear Programming in Julia"
},

{
    "location": "index.html#Contributions-1",
    "page": "Home",
    "title": "Contributions",
    "category": "section",
    "text": "This package is written and maintained by Aritra Pal. Please fork and send a pull request or create a GitHub issue for bug reports or feature requests."
},

{
    "location": "index.html#Index:-1",
    "page": "Home",
    "title": "Index:",
    "category": "section",
    "text": ""
},

{
    "location": "index.html#Important-Note-about-the-Instances-1",
    "page": "Home",
    "title": "Important Note about the Instances",
    "category": "section",
    "text": "Most of these instances are taken from different sources. We have uploaded these instances here to make life easier for users by giving them an easier access. However, it is the responsibility of all users to refer to the original website and follow the rules (or any license) defined by the (true) owners of these instances. The details of the instances are mentioned below:Type of Problem Number of Classes Instances for each Class Total Instances Online Source Please Cite\nBiobjective Assignment Problem 4 5 20 4 [article4]\nBiobjective 1-D Knapsack 4 1 4 1 [article1]\nBiobjective 1-D Knapsack 10 4 40 2 [article2]\nBiobjective 1-D Knapsack 1 20 20 3 [article3]\nBiobjective 1-D Knapsack 1 15 15 3 [article3]\nBiobjective 1-D Knapsack 1 3 3 3 [article3]\nBiobjective 2-D Knapsack 4 5 20 4 [article4]\nBiobjective Set Covering 3 4 12 5 [article5]\nBiobjective Set Packing 20 6 120 6 [article6]\nBiobjective Mixed Integer Programs 5 5 25 4 [article7]\nBiobjective Uncapacitated Facility Location Problem 3 4 12 4 [article7]\nBiobjective Best Subset Selection ( Hadi Instances ) 3 3 9 8 [article8]\nMultiobjective Assignment Problem 10 10 100 9 [article9]\nMultiobjective 1-D Knapsack 16 10 160 9 [article9]"
},

{
    "location": "index.html#References:-1",
    "page": "Home",
    "title": "References:",
    "category": "section",
    "text": "[article1]: Gandibleux, Xavier, and Arnaud Freville. \"Tabu search based procedure for solving the 0-1 multiobjective knapsack problem: the two objectives case.\" Journal of Heuristics 6.3 (2000): 361-383. [article2]: F. Degoutin and X. Gandibleux. Un retour d'expériences sur la résolution de problèmes combinatoires bi-objectifs. Journée Programmation Mathématique Multiobjectifs (PM2O). May 17th, 2002, Angers, France.[article3]: Captivo, M. Eugénia, et al. \"Solving bicriteria 0–1 knapsack problems using a labeling algorithm.\" Computers & Operations Research 30.12 (2003): 1865-1886.[article4]: Boland, Natashia, Hadi Charkhgard, and Martin Savelsbergh. \"A criterion space search algorithm for biobjective integer programming: The balanced box method.\" INFORMS Journal on Computing 27.4 (2015): 735-754.[article5]: Soylu, Banu. \"Heuristic approaches for biobjective mixed 0–1 integer linear programming problems.\" European Journal of Operational Research 245.3 (2015): 690-703.[article6]: Delorme, Xavier, Xavier Gandibleux, and Fabien Degoutin. \"Evolutionary, constructive and hybrid procedures for the bi-objective set packing problem.\" European Journal of Operational Research 204.2 (2010): 206-217.[article7]: Boland, Natashia, Hadi Charkhgard, and Martin Savelsbergh. \"A criterion space search algorithm for biobjective mixed integer programming: The triangle splitting method.\" INFORMS Journal on Computing 27.4 (2015): 597-618.[article8]: Hadi Charkhgard, Ali Eshragh. Best subset selection via bi-objective mixed integer linear programming. Submitted to Operations Research Letters.[article9]: Kirlik, Gokhan, and Serpil Sayın. \"A new algorithm for generating all nondominated solutions of multiobjective discrete optimization problems.\" European Journal of Operational Research 232.3 (2014): 479-488."
},

{
    "location": "bobp.html#",
    "page": "Biobjective Binary Programming Instances",
    "title": "Biobjective Binary Programming Instances",
    "category": "page",
    "text": ""
},

{
    "location": "bobp.html#Biobjective-Binary-Programs-1",
    "page": "Biobjective Binary Programming Instances",
    "title": "Biobjective Binary Programs",
    "category": "section",
    "text": ""
},

{
    "location": "bobp.html#Modolib.read_boap_hadi_instance",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_boap_hadi_instance",
    "category": "Function",
    "text": "read_boap_hadi_instance(num::Int64=1)\n\nReturns a BOBPInstance corresponding to the numth Bi Objective Assignment Problem ( Hadi Instance )\n\n\n\n"
},

{
    "location": "bobp.html#Modolib.read_boap_hadi_non_dom_pts",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_boap_hadi_non_dom_pts",
    "category": "Function",
    "text": "read_boap_hadi_non_dom_pts(num::Int64=1)\n\nReturns the Efficient Frontier of the numth Bi Objective Assignment Problem ( Hadi Instance )\n\n\n\n"
},

{
    "location": "bobp.html#Modolib.read_boap_hadi",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_boap_hadi",
    "category": "Function",
    "text": "read_boap_hadi(num::Int64)\n\nReturns a BOBPInstance corresponding to the numth Bi Objective Assignment Problem ( Hadi Instance ) and its Efficient Frontier\n\n\n\n"
},

{
    "location": "bobp.html#Biobjective-Assignment-Problems-(BOAP)-1",
    "page": "Biobjective Binary Programming Instances",
    "title": "Biobjective Assignment Problems (BOAP)",
    "category": "section",
    "text": "read_boap_hadi_instance\nread_boap_hadi_non_dom_pts\nread_boap_hadi"
},

{
    "location": "bobp.html#Biobjective-Knapsack-Problems-(BOKP)-1",
    "page": "Biobjective Binary Programming Instances",
    "title": "Biobjective Knapsack Problems (BOKP)",
    "category": "section",
    "text": ""
},

{
    "location": "bobp.html#Modolib.read_bokp_xavier_non_dom_pts",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_bokp_xavier_non_dom_pts",
    "category": "Function",
    "text": "read_bokp_xavier_non_dom_pts(filename::AbstractString)\n\nReturns Efficient Frontier of a Bi Objective Knapsack Problem ( Xavier Instance )\n\n\n\n"
},

{
    "location": "bobp.html#Modolib.read_bokp_xavier1",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_bokp_xavier1",
    "category": "Function",
    "text": "read_bokp_xavier1(name::String)\n\nReturns a BOBPInstance of a Bi Objective Knapsack Problem ( Xavier Class 1 Instance ) and its Efficient Frontier\n\n\n\n"
},

{
    "location": "bobp.html#Modolib.read_bokp_xavier2",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_bokp_xavier2",
    "category": "Function",
    "text": "read_bokp_xavier2(name::String)\n\nReturns a BOBPInstance of a Bi Objective Knapsack Problem ( Xavier Class 2 Instance ) and its Efficient Frontier\n\n\n\n"
},

{
    "location": "bobp.html#Xavier-Instances-1",
    "page": "Biobjective Binary Programming Instances",
    "title": "Xavier Instances",
    "category": "section",
    "text": "read_bokp_xavier_instance1\nread_bokp_xavier_instance2read_bokp_xavier_non_dom_pts\nread_bokp_xavier1\nread_bokp_xavier2"
},

{
    "location": "bobp.html#Modolib.read_bokp_hadi_instance",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_bokp_hadi_instance",
    "category": "Function",
    "text": "read_bokp_hadi_instance(num::Int64=1)\n\nReturns a BOBPInstance corresponding to the numth Bi Objective Knapsack Problem ( Hadi Instance )\n\n\n\n"
},

{
    "location": "bobp.html#Modolib.read_bokp_hadi_non_dom_pts",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_bokp_hadi_non_dom_pts",
    "category": "Function",
    "text": "read_bokp_hadi_non_dom_pts(num::Int64=1)\n\nReturns the Efficient Frontier of the numth Bi Objective Knapsack Problem ( Hadi Instance )\n\n\n\n"
},

{
    "location": "bobp.html#Modolib.read_bokp_hadi",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_bokp_hadi",
    "category": "Function",
    "text": "read_bokp_hadi(num::Int64)\n\nReturns a BOBPInstance corresponding to the numth Bi Objective Knapsack Problem ( Hadi Instance ) and its Efficient Frontier\n\n\n\n"
},

{
    "location": "bobp.html#Hadi-Instances-1",
    "page": "Biobjective Binary Programming Instances",
    "title": "Hadi Instances",
    "category": "section",
    "text": "read_bokp_hadi_instance\nread_bokp_hadi_non_dom_pts\nread_bokp_hadi"
},

{
    "location": "bobp.html#Modolib.read_bokp_aritra_instance",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_bokp_aritra_instance",
    "category": "Function",
    "text": "read_bokp_aritra_instance(n::Int64, m::Int64, instance::Int64)\n\nReturns a BOBPInstance of a Bi Objective Knapsack Problem ( Aritra Instances ) corresponding to n, m and instance.\n\n\n\n"
},

{
    "location": "bobp.html#Biobjective-Multi-Dimensional-Knapsack-Problems-(BOKP)-1",
    "page": "Biobjective Binary Programming Instances",
    "title": "Biobjective Multi Dimensional Knapsack Problems (BOKP)",
    "category": "section",
    "text": "For this set of instances, the efficient frontier is not available.read_bokp_aritra_instance"
},

{
    "location": "bobp.html#Modolib.read_boscp_xavier_instance",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_boscp_xavier_instance",
    "category": "Function",
    "text": "read_boscp_xavier_instance(instance_id::String)\n\nReturns a BOBPInstance of a Bi Objective Set Covering Problem ( Xavier Instance ) corresponding to instance_id.\n\n\n\n"
},

{
    "location": "bobp.html#Modolib.read_boscp_xavier_non_dom_pts",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_boscp_xavier_non_dom_pts",
    "category": "Function",
    "text": "read_boscp_xavier_non_dom_pts(instance_id::String)\n\nReturns the Efficient Frontier of the Bi Objective Set Covering Problem ( Xavier Instance ) corresponding to instance_id.\n\n\n\n"
},

{
    "location": "bobp.html#Modolib.read_boscp_xavier",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_boscp_xavier",
    "category": "Function",
    "text": "read_boscp_xavier(instance_id::String)\n\nReturns a BOBPInstance of a Bi Objective Set Covering Problem ( Xavier Instance ) and its Efficient Frontier.\n\n\n\n"
},

{
    "location": "bobp.html#Biobjective-Set-Covering-Problems-(BOSCP)-1",
    "page": "Biobjective Binary Programming Instances",
    "title": "Biobjective Set Covering Problems (BOSCP)",
    "category": "section",
    "text": "read_boscp_xavier_instance\nread_boscp_xavier_non_dom_pts\nread_boscp_xavier"
},

{
    "location": "bobp.html#Modolib.read_bospp_xavier_instance",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_bospp_xavier_instance",
    "category": "Function",
    "text": "read_bospp_xavier_instance(instance_id::String)\n\nReturns a BOBPInstance of a Bi Objective Set Packing Problem ( Xavier Instance ) corresponding to filename.\n\n\n\n"
},

{
    "location": "bobp.html#Modolib.read_bospp_xavier_non_dom_pts",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_bospp_xavier_non_dom_pts",
    "category": "Function",
    "text": "read_bospp_xavier_non_dom_pts(instance_id::String)\n\nReturns the Efficient Frontier of a Bi Objective Set Packing Problem ( Xavier Instance )\n\n\n\n"
},

{
    "location": "bobp.html#Modolib.read_bospp_xavier",
    "page": "Biobjective Binary Programming Instances",
    "title": "Modolib.read_bospp_xavier",
    "category": "Function",
    "text": "read_bospp_xavier(instance_id::String)\n\nReturns a BOBPInstance of a Bi Objective Set Packing Problem ( Xavier Instance ) and its Efficient Frontier.\n\n\n\n"
},

{
    "location": "bobp.html#Biobjective-Set-Packing-Problems-(BOSPP)-1",
    "page": "Biobjective Binary Programming Instances",
    "title": "Biobjective Set Packing Problems (BOSPP)",
    "category": "section",
    "text": "read_bospp_xavier_instance\nread_bospp_xavier_non_dom_pts\nread_bospp_xavier"
},

{
    "location": "bombp.html#",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Biobjective Mixed Binary Programming Instances",
    "category": "page",
    "text": ""
},

{
    "location": "bombp.html#Biobjective-Mixed-Binary-Programs-1",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Biobjective Mixed Binary Programs",
    "category": "section",
    "text": ""
},

{
    "location": "bombp.html#Modolib.read_bomip_hadi_instance",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_bomip_hadi_instance",
    "category": "Function",
    "text": "read_bomip_hadi_instance(num::Int64, ϵ::Float64=1.0e-9)\n\nReturns a BOMBLPInstance corresponding to the numth Bi Objective Mixed Integer Programming Problem ( Hadi Instance )\n\n\n\n"
},

{
    "location": "bombp.html#Modolib.read_bomip_hadi_non_dom_pts",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_bomip_hadi_non_dom_pts",
    "category": "Function",
    "text": "read_bomip_hadi_non_dom_pts(num::Int64)\n\nReturns the Efficient Frontier of the numth Bi Objective Mixed Integer Programming Problem ( Hadi Instance )\n\n\n\n"
},

{
    "location": "bombp.html#Modolib.read_bomip_hadi",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_bomip_hadi",
    "category": "Function",
    "text": "read_bomip_hadi(num::Int64, ϵ::Float64=1.0e-9)\n\nReturns a BOMBLPInstance corresponding to the numth Bi Objective Mixed Integer Programming Problem ( Hadi Instance ) and its Efficient Frontier\n\n\n\n"
},

{
    "location": "bombp.html#Biobjective-Mixed-Binary-Linear-Programming-Instance-(BOMIP)-1",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Biobjective Mixed Binary Linear Programming Instance (BOMIP)",
    "category": "section",
    "text": "read_bomip_hadi_instance\nread_bomip_hadi_non_dom_pts\nread_bomip_hadi"
},

{
    "location": "bombp.html#Modolib.read_bouflp_hadi_instance",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_bouflp_hadi_instance",
    "category": "Function",
    "text": "read_bouflp_hadi_instance(num::Int64, ϵ::Float64=1.0e-9)\n\nReturns a BOMBLPInstance corresponding to the numth Bi Objective Uncapacitated Facility Location Problem ( Hadi Instance )\n\n\n\n"
},

{
    "location": "bombp.html#Modolib.read_bouflp_hadi_non_dom_pts",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_bouflp_hadi_non_dom_pts",
    "category": "Function",
    "text": "read_bouflp_hadi_non_dom_pts(num::Int64)\n\nReturns the Efficient Frontier of the numth Bi Objective Uncapacitated Facility Location Problem ( Hadi Instance )\n\n\n\n"
},

{
    "location": "bombp.html#Modolib.read_bouflp_hadi",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_bouflp_hadi",
    "category": "Function",
    "text": "read_bouflp_hadi(num::Int64, ϵ::Float64=1.0e-9)\n\nReturns a BOMBLPInstance corresponding to the numth Bi Objective Uncapacitated Facility Location Problem ( Hadi Instance ) and its Efficient Frontier\n\n\n\n"
},

{
    "location": "bombp.html#Biobjective-Uncapacitated-Facility-Location-Problem-(BOUFLP)-1",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Biobjective Uncapacitated Facility Location Problem (BOUFLP)",
    "category": "section",
    "text": "read_bouflp_hadi_instance\nread_bouflp_hadi_non_dom_pts\nread_bouflp_hadi"
},

{
    "location": "bombp.html#Modolib.generate_bobss_bomblpinstance",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Modolib.generate_bobss_bomblpinstance",
    "category": "Function",
    "text": "generate_bobss_bomblpinstance(y::Vector{Float64}, x::Array{Float64, 2}, M::Float64, ϵ::Float64=1.0e-9)\n\nReturns a BOMBLPInstance for the Best Subset Selection Problem corresponding to y, x and M\n\n\n\n"
},

{
    "location": "bombp.html#Modolib.read_bobss_hadi_xycor",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_bobss_hadi_xycor",
    "category": "Function",
    "text": "read_bobss_hadi_xycor(p::Int64, n::Int64, instance::Int64)\n\nReturns y::Vector{Float64}, x::Array{Float64, 2} and correlation::Vector{Float64} corresponding to p, n and instance Bi Objective Best Subset Selection Problem ( Hadi Instance )\n\n\n\n"
},

{
    "location": "bombp.html#Modolib.read_bobss_hadi_non_dom_pts",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_bobss_hadi_non_dom_pts",
    "category": "Function",
    "text": "read_bobss_hadi_non_dom_pts(p::Int64, n::Int64, instance::Int64)\n\nReturns the Efficient Frontier of the Bi Objective Best Subset Selection Problem ( Hadi Instance ) corresponding to p, n and instance\n\n\n\n"
},

{
    "location": "bombp.html#Modolib.read_bobss_hadi",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_bobss_hadi",
    "category": "Function",
    "text": "read_bobss_hadi(p::Int64, n::Int64, instance::Int64, M::Float64=1.0e10, ϵ::Float64=1.0e-9)\n\nReturns y, x, correlation, BOMBLPInstance and the Efficient Frontier for the Best Subset Selection Problem ( Hadi Instance ) corresponding to y, x and M\n\n\n\n"
},

{
    "location": "bombp.html#Biobjective-Best-Subset-Selection-(BOBSS)-1",
    "page": "Biobjective Mixed Binary Programming Instances",
    "title": "Biobjective Best Subset Selection (BOBSS)",
    "category": "section",
    "text": "generate_bobss_bomblpinstanceread_bobss_hadi_xycor\nread_bobss_hadi_non_dom_pts\nread_bobss_hadi"
},

{
    "location": "mobp.html#",
    "page": "Multiobjective Binary Programming Instances",
    "title": "Multiobjective Binary Programming Instances",
    "category": "page",
    "text": ""
},

{
    "location": "mobp.html#Multiobjective-Binary-Programs-1",
    "page": "Multiobjective Binary Programming Instances",
    "title": "Multiobjective Binary Programs",
    "category": "section",
    "text": ""
},

{
    "location": "mobp.html#Modolib.read_moap_kirlik_instance",
    "page": "Multiobjective Binary Programming Instances",
    "title": "Modolib.read_moap_kirlik_instance",
    "category": "Function",
    "text": "read_moap_kirlik_instance(p::Int64, n::Int64, instance::Int64)\n\nReturns a MOBPInstance of a Multi Objective Assignment Problem ( Kirlik Instance ) corresponding to p, n and instance\n\n\n\n"
},

{
    "location": "mobp.html#Modolib.read_moap_kirlik_non_dom_pts",
    "page": "Multiobjective Binary Programming Instances",
    "title": "Modolib.read_moap_kirlik_non_dom_pts",
    "category": "Function",
    "text": "read_moap_kirlik_non_dom_pts(p::Int64, n::Int64, instance::Int64)\n\nReturns the Efficient Frontier of the Multi Objective Assignment Problem ( Kirlik Instance ) corresponding to p, n and instance\n\n\n\n"
},

{
    "location": "mobp.html#Modolib.read_moap_kirlik",
    "page": "Multiobjective Binary Programming Instances",
    "title": "Modolib.read_moap_kirlik",
    "category": "Function",
    "text": "read_moap_kirlik(p::Int64, n::Int64, instance::Int64)\n\nReturns MOBPInstance and the Efficient Frontier of the Multi Objective Assignment Problem ( Kirlik Instance ) corresponding to p, n and instance\n\n\n\n"
},

{
    "location": "mobp.html#Multiobjective-Assignment-Problems-(MOAP)-1",
    "page": "Multiobjective Binary Programming Instances",
    "title": "Multiobjective Assignment Problems (MOAP)",
    "category": "section",
    "text": "read_moap_kirlik_instance\nread_moap_kirlik_non_dom_pts\nread_moap_kirlik"
},

{
    "location": "mobp.html#Modolib.read_mokp_kirlik_instance",
    "page": "Multiobjective Binary Programming Instances",
    "title": "Modolib.read_mokp_kirlik_instance",
    "category": "Function",
    "text": "read_mokp_kirlik_instance(p::Int64, n::Int64, instance::Int64)\n\nReturns a MOBPInstance of a Multi Objective Knapsack Problem ( Kirlik Instance ) corresponding to p, n and instance\n\n\n\n"
},

{
    "location": "mobp.html#Modolib.read_mokp_kirlik_non_dom_pts",
    "page": "Multiobjective Binary Programming Instances",
    "title": "Modolib.read_mokp_kirlik_non_dom_pts",
    "category": "Function",
    "text": "read_mokp_kirlik_non_dom_pts(p::Int64, n::Int64, instance::Int64)\n\nReturns the Efficient Frontier of the Multi Objective Knapsack Problem ( Kirlik Instance ) corresponding to p, n and instance\n\n\n\n"
},

{
    "location": "mobp.html#Modolib.read_mokp_kirlik",
    "page": "Multiobjective Binary Programming Instances",
    "title": "Modolib.read_mokp_kirlik",
    "category": "Function",
    "text": "read_mokp_kirlik(p::Int64, n::Int64, instance::Int64)\n\nReturns MOBPInstance and the Efficient Frontier of the Multi Objective Knapsack Problem ( Kirlik Instance ) corresponding to p, n and instance\n\n\n\n"
},

{
    "location": "mobp.html#Multiobjective-Knapsack-Problems-(MOKP)-1",
    "page": "Multiobjective Binary Programming Instances",
    "title": "Multiobjective Knapsack Problems (MOKP)",
    "category": "section",
    "text": "read_mokp_kirlik_instance\nread_mokp_kirlik_non_dom_pts\nread_mokp_kirlik"
},

{
    "location": "mombp.html#",
    "page": "Multiobjective Mixed Binary Programming Instances",
    "title": "Multiobjective Mixed Binary Programming Instances",
    "category": "page",
    "text": ""
},

{
    "location": "mombp.html#Modolib.read_mombp_aritra_instance",
    "page": "Multiobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_mombp_aritra_instance",
    "category": "Function",
    "text": "read_mombp_aritra_instance(p::Int64, m::Int64, instance::Int64)\n\nReturns a MOMBLPInstance of a Multiobjective Mixed Binary Problem ( Aritra Instances ) corresponding to p, m and instance.\n\n\n\n"
},

{
    "location": "mombp.html#Modolib.read_mombp_aritra_non_dom_pts",
    "page": "Multiobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_mombp_aritra_non_dom_pts",
    "category": "Function",
    "text": "read_mombp_aritra_non_dom_pts(p::Int64, m::Int64, instance::Int64)\n\nReturns the Approximate Efficient Frontier of a Multiobjective Mixed Binary Problem ( Aritra Instances ) corresponding to p, m and instance.\n\n\n\n"
},

{
    "location": "mombp.html#Modolib.read_mombp_aritra",
    "page": "Multiobjective Mixed Binary Programming Instances",
    "title": "Modolib.read_mombp_aritra",
    "category": "Function",
    "text": "read_mombp_aritra(p::Int64, m::Int64, instance::Int64)\n\nReturns MOMBLPInstance and the Approximate Efficient Frontier of a Multiobjective Mixed Binary Problem ( Aritra Instances ) corresponding to p, m and instance.\n\n\n\n"
},

{
    "location": "mombp.html#Multiobjective-Mixed-Binary-Programs-1",
    "page": "Multiobjective Mixed Binary Programming Instances",
    "title": "Multiobjective Mixed Binary Programs",
    "category": "section",
    "text": "read_mombp_aritra_instance\nread_mombp_aritra_non_dom_pts\nread_mombp_aritra"
},

{
    "location": "random.html#",
    "page": "Random Instance Generators",
    "title": "Random Instance Generators",
    "category": "page",
    "text": ""
},

{
    "location": "random.html#Random-Instance-Generators-1",
    "page": "Random Instance Generators",
    "title": "Random Instance Generators",
    "category": "section",
    "text": ""
},

{
    "location": "random.html#Modolib.generate_knapsack_instances",
    "page": "Random Instance Generators",
    "title": "Modolib.generate_knapsack_instances",
    "category": "Function",
    "text": "generate_knapsack_instances(num_obj::Int64=2, num_var::Int64=10, num_cons::Int64=1, sparse::Bool=true)\n\nReturns a MOBPInstance of a random Multi Objective Knapsack Problem with num_obj objectives num_var binary variables and num_cons inequality constraints.\n\n\n\n"
},

{
    "location": "random.html#Modolib.generate_bokp_instances",
    "page": "Random Instance Generators",
    "title": "Modolib.generate_bokp_instances",
    "category": "Function",
    "text": "generate_bokp_instances(num_var::Int64, num_cons::Int64, sparse::Bool)\n\nReturns a BOBPInstance of a random Bi Objective Knapsack Problem with num_var binary variables and num_cons inequality constraints.\n\n\n\n"
},

{
    "location": "random.html#Multiobjective-and-Biobjective-Multi-Dimensional-Knapsack-Problems-1",
    "page": "Random Instance Generators",
    "title": "Multiobjective and Biobjective Multi Dimensional Knapsack Problems",
    "category": "section",
    "text": "generate_knapsack_instances\ngenerate_bokp_instancesThe method for generating a random biobjective multi dimensional knapsack instance is as follows:When sparse = truebeginalign*\nc^1_i  in 1100  forall i in 1 n \nc^2_i  in 1100  forall i in 1 n \nA_ij  in 0100  forall i in 1 n j in 1 m \nb_j  = lceil dfracsum_i A_ij2 rceil  forall j in 1 m\nendalign*When sparse = falsebeginalign*\nc^1_i  in 1100  forall i in 1 n \nc^2_i  in 1100  forall i in 1 n \nA_ij  in 1100  forall i in 1 n j in 1 m \nb_j  = lceil dfracsum_i A_ij2 rceil  forall j in 1 m\nendalign*"
},

{
    "location": "random.html#Modolib.generate_mixed_binary_instances",
    "page": "Random Instance Generators",
    "title": "Modolib.generate_mixed_binary_instances",
    "category": "Function",
    "text": "generate_mixed_binary_instances(num_obj::Int64=2, num_cont_var::Int64=10, num_bin_var::Int64=10, num_cons::Int64=1)\n\nReturns a MOMBLPInstance or a BOMBLPInstance of a random Multiobjective Mavrotas Mixed Binary Problem.\n\n\n\n"
},

{
    "location": "random.html#Multiobjective-General-Mixed-Binary-Problem-1",
    "page": "Random Instance Generators",
    "title": "Multiobjective General Mixed Binary Problem",
    "category": "section",
    "text": "generate_mixed_binary_instances"
},

{
    "location": "api.html#",
    "page": "Reading and Writing Instances",
    "title": "Reading and Writing Instances",
    "category": "page",
    "text": ""
},

{
    "location": "api.html#Reading-and-Writing-Instances-1",
    "page": "Reading and Writing Instances",
    "title": "Reading and Writing Instances",
    "category": "section",
    "text": ""
},

{
    "location": "api.html#Modolib.write_bobpinstance",
    "page": "Reading and Writing Instances",
    "title": "Modolib.write_bobpinstance",
    "category": "Function",
    "text": "write_bobpinstance(instance::BOBPInstance, filename::AbstractString)\n\nWriting a BOBPInstance to filename.\n\n\n\n"
},

{
    "location": "api.html#Modolib.read_bobpinstance",
    "page": "Reading and Writing Instances",
    "title": "Modolib.read_bobpinstance",
    "category": "Function",
    "text": "read_bobpinstance(filename::AbstractString)\n\nReturns a BOBPInstance of a Bi Objective Binary Problem corresponding to filename\n\n\n\n"
},

{
    "location": "api.html#Reading-and-Writing-a-BOBPInstance-1",
    "page": "Reading and Writing Instances",
    "title": "Reading and Writing a BOBPInstance",
    "category": "section",
    "text": "write_bobpinstance\nread_bobpinstance"
},

]}
