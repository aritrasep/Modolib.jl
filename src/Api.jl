###############################################################################
#                                                                             #
#  This file is part of the julia module for Multi Objective Optimization     #
#  (c) Copyright 2017 by Aritra Pal                                           #
#                                                                             #
# Permission is hereby granted, free of charge, to any person obtaining a     # 
# copy of this software and associated documentation files (the "Software"),  #
# to deal in the Software without restriction, including without limitation   #
# the rights to use, copy, modify, merge, publish, distribute, sublicense,    #
# and/or sell copies of the Software, and to permit persons to whom the       #
# Software is furnished to do so, subject to the following conditions:        #
#                                                                             #
# The above copyright notice and this permission notice shall be included in  #
# all copies or substantial portions of the Software.                         #
#                                                                             #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  #
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    #
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE #
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      #
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     #
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         #
# DEALINGS IN THE SOFTWARE.                                                   #
#                                                                             #
# Every publication and presentation for which work based on the Program or   #
# its output has been used must contain an appropriate citation and           #
# acknowledgment of the author(s) of the Program.                             #
###############################################################################

global instance_location = joinpath(@__DIR__, "..", "instances")

#####################################################################
# Reading a Bi Objective Assignment Problem Instance                #
# Hadi Instances                                                    #
#####################################################################

global hadi_boap_instance_location = "$(instance_location)/BOAP/Hadi_Instances/instances/"
global hadi_boap_non_dom_sols_locations = "$(instance_location)/BOAP/Hadi_Instances/non dominated points/"

"""
    read_boap_hadi_instance(num::Int64=1)

 Returns a `BOBPInstance` corresponding to the `num`th Bi Objective Assignment Problem ( Hadi Instance )
"""
function read_boap_hadi_instance(num::Int64=1)
    lines_in_file = readlines("$(hadi_boap_instance_location)$(num)dat.txt")
    n = parse(Int64, lines_in_file[1])
    c1, c2 = zeros(n^2), zeros(n^2)
    for i in 1:2
        tmp = split(lines_in_file[i+1])
        for j in 1:n^2
            if i == 1
                c1[j] = float(tmp[j])
            else
                c2[j] = float(tmp[j])
            end
        end
    end
    A = spzeros(2n, n^2)
    for i in 1:n
        A[i, n*(i-1)+1:n*i] = 1.0
    end
    for i in n+1:2n, j in 1:n
        A[i, n*(j-1)+i-n] = 1.0
    end
    BOBPInstance(c1, c2, A, ones(2n), ones(2n))
end

"""
    read_boap_hadi_non_dom_pts(num::Int64=1)
    
 Returns the Efficient Frontier of the `num`th Bi Objective Assignment Problem ( Hadi Instance )
"""
function read_boap_hadi_non_dom_pts(num::Int64=1)
    select_and_sort_non_dom_sols(readdlm("$(hadi_boap_non_dom_sols_locations)$(num)out.txt"))
end

"""
    read_boap_hadi(num::Int64)
    
 Returns a `BOBPInstance` corresponding to the `num`th Bi Objective Assignment Problem ( Hadi Instance ) and its Efficient Frontier
"""
function read_boap_hadi(num::Int64=1)
    (read_boap_hadi_instance(num), read_boap_hadi_non_dom_pts(num))
end

#####################################################################
# Reading a Bi Objective Knapsack Problem Instance                  #
# Hadi Instances                                                    #
#####################################################################

global hadi_bokp_instance_location = "$(instance_location)/BOKP/Hadi_Instances/instances/"
global hadi_bokp_non_dom_sols_locations = "$(instance_location)/BOKP/Hadi_Instances/non dominated points/"

"""
    read_bokp_hadi_instance(num::Int64=1)
    
 Returns a `BOBPInstance` corresponding to the `num`th Bi Objective Knapsack Problem ( Hadi Instance )
"""
function read_bokp_hadi_instance(num::Int64=1)
    lines_in_file = readlines("$(hadi_bokp_instance_location)$(num)dat.txt")
    n = parse(Int64, lines_in_file[1])
    tmp = split(lines_in_file[4])
    c1 = collect([parse(Int64,tmp[i]) for i in 1:length(tmp)])
    tmp = split(lines_in_file[5])
    c2 = collect([parse(Int64,tmp[i]) for i in 1:length(tmp)])
    A = zeros(2, n)
    tmp = split(lines_in_file[6])
    A[1, :] = -1.0*collect([parse(Int64,tmp[i]) for i in 1:length(tmp)])
    tmp = split(lines_in_file[7])
    A[2, :] = -1.0*collect([parse(Int64,tmp[i]) for i in 1:length(tmp)])
    cons_lb::Vector{Float64} = -1.0*[float(lines_in_file[2]), float(lines_in_file[3])]
    BOBPInstance(c1, c2, A, cons_lb, fill(Inf, 2))
end

"""
    read_bokp_hadi_non_dom_pts(num::Int64=1)

 Returns the Efficient Frontier of the `num`th Bi Objective Knapsack Problem ( Hadi Instance )
"""
function read_bokp_hadi_non_dom_pts(num::Int64=1)
    select_and_sort_non_dom_sols(-1.0*readdlm("$(hadi_bokp_non_dom_sols_locations)$(num)out.txt"))
end

"""
    read_bokp_hadi(num::Int64)

 Returns a `BOBPInstance` corresponding to the `num`th Bi Objective Knapsack Problem ( Hadi Instance ) and its Efficient Frontier
"""
function read_bokp_hadi(num::Int64=1)
    (read_bokp_hadi_instance(num), read_bokp_hadi_non_dom_pts(num))
end

#####################################################################
# Reading a Bi Objective Knapsack Problem Instance                  #
# Xavier Instances                                                  #
#####################################################################

global xavier_bokp_instance_location = "$(instance_location)/BOKP/Xavier_Instances/instances/"
global xavier_bokp_non_dom_sols_locations = "$(instance_location)/BOKP/Xavier_Instances/non dominated points/"

"""
    read_bokp_xavier_instance1(filename::AbstractString)
    
 Returns a `BOBPInstance` of a Bi Objective Knapsack Problem ( Xavier Class 1 Instances ) corresponding to `filename`.
"""
function read_bokp_xavier_instance1(filename::AbstractString)
    lines_in_file = readlines(filename)
    n = 0
    try
        n = parse(Int64, split(lines_in_file[1])[end])
    catch
        n = parse(Int64, lines_in_file[4])
    end
    m = 1
    coeffs = zeros(3, n)
    pos1, pos2 = 1, 1
    i = 1
    while i <= length(lines_in_file)
        if contains(lines_in_file[i], "Objectif") || contains(lines_in_file[i], "Contrainte")
            i += 1
            pos2 = 1
            while pos2 <= n
                tmp = split(lines_in_file[i])
                if length(tmp) >= 1
                    coeffs[pos1, pos2] = float(tmp[1])
                    pos2 += 1
                end
                i += 1
            end
            pos1 += 1
        else
            i += 1
        end
    end
    BOBPInstance(-1.0vec(coeffs[1, :]), -1.0vec(coeffs[2, :]), -1.0coeffs[3:end, :], [-1.0float(split(lines_in_file[end])[1])], [Inf])
end

"""
    read_bokp_xavier_instance2(filename::AbstractString)

 Returns a `BOBPInstance` of a Bi Objective Knapsack Problem ( Xavier Class 1 Instances ) corresponding to `filename`.
"""
function read_bokp_xavier_instance2(filename::AbstractString)
    n = 0
    W = 0.0
    lines_in_file = readlines(filename)
    for i in 1:length(lines_in_file)
        if lines_in_file[i][1] == 'n'
            n = parse(Int64,split(lines_in_file[i])[2])
            break
        end 
    end
    coeffs = zeros(n, 3)
    count = 1
    for i in 1:length(lines_in_file)
        if lines_in_file[i][1] == 'i'
            tmp = split(lines_in_file[i])[2:end]
            coeffs[count, :] = [parse(Int64,tmp[i]) for i in 1:3]
            count += 1
        end 
        if lines_in_file[i][1] == 'W'
            W = float(split(lines_in_file[i])[2]) 
        end
    end
    BOBPInstance(-1.0vec(coeffs[:,2]), -1.0vec(coeffs[:, 3]), Array{Float64, 2}(-1.0coeffs[:, 1]'), [-1.0W], [Inf])
end

"""
    read_bokp_xavier_non_dom_pts(filename::AbstractString)

 Returns Efficient Frontier of a Bi Objective Knapsack Problem ( Xavier Instance )
"""
function read_bokp_xavier_non_dom_pts(filename::AbstractString)
    select_and_sort_non_dom_sols(-1.0*readdlm(filename)[:, 1:2])
end

"""
    read_bokp_xavier1(name::String)

 Returns a `BOBPInstance` of a Bi Objective Knapsack Problem ( Xavier Class 1 Instance ) and its Efficient Frontier
"""
function read_bokp_xavier1(name::String)
    try
        (read_bokp_xavier_instance1("$(xavier_bokp_instance_location)$(name).dat"), read_bokp_xavier_non_dom_pts("$(xavier_bokp_non_dom_sols_locations)$(name).max"))
    catch
        (read_bokp_xavier_instance1("$(xavier_bokp_instance_location)$(name).DAT"), read_bokp_xavier_non_dom_pts("$(xavier_bokp_non_dom_sols_locations)$(name).max"))
    end
end

"""
    read_bokp_xavier2(name::String)

 Returns a `BOBPInstance` of a Bi Objective Knapsack Problem ( Xavier Class 2 Instance ) and its Efficient Frontier
"""
function read_bokp_xavier2(name::String)
    (read_bokp_xavier_instance2("$(xavier_bokp_instance_location)$(name).KNP"), read_bokp_xavier_non_dom_pts("$(xavier_bokp_non_dom_sols_locations)$(name).max"))
end

#####################################################################
# Reading a Bi Objective Multi Dimensional Knapsack Problem         #
# Aritra Instances                                                  #
#####################################################################

global aritra_bokp_instance_location = "$(instance_location)/BOKP/Aritra_Instances/"

"""
    read_bokp_aritra_instance(n::Int64, m::Int64, instance::Int64)
    
 Returns a `BOBPInstance` of a Bi Objective Knapsack Problem ( Aritra Instances ) corresponding to `n`, `m` and `instance`.
"""
function read_bokp_aritra_instance(n::Int64, m::Int64, instance::Int64)
    read_bobpinstance("$(aritra_bokp_instance_location)2_$(n)_$(m)_$(instance).txt")
end

#####################################################################
# Reading a Bi Objective Set Covering Problem Instance              #
# Xavier Instances                                                  #
#####################################################################

global xavier_boscp_instance_location = "$(instance_location)/BOSCP/Xavier_Instances/instances/"
global xavier_boscp_non_dom_sols_locations = "$(instance_location)/BOSCP/Xavier_Instances/non dominated points/"

"""
    read_boscp_xavier_instance(instance_id::String)
    
 Returns a `BOBPInstance` of a Bi Objective Set Covering Problem ( Xavier Instance ) corresponding to `instance_id`.
"""
function read_boscp_xavier_instance(instance_id::String)
    lines_in_file = readlines("$(xavier_boscp_instance_location)$(instance_id).txt")
    objs = parse(Int64, lines_in_file[1])
    m, n = [parse(Int64, split(lines_in_file[2])[i]) for i in 1:2]
    c = zeros(objs * n)
    for i in 1:convert(Int64, length(c)/10)
        c[10*(i-1)+1:10*i] = [float(split(lines_in_file[i+2])[j]) for j in 1:10]
    end
    if objs == 2
        c1 = c[1:n]
        c2 = c[n+1:end]
    end
    A = spzeros(m, n)
    line = convert(Int64, length(c)/10) + 3
    for i in 1:m
        count = parse(Int64, split(lines_in_file[line])[1])
        A[i, [parse(Int64, split(lines_in_file[line+1])[j]) for j in 1:count]] = 1.0
        line += 2
    end
    BOBPInstance(c1, c2, A, fill(1.0, m), fill(Inf, m))
end

"""
    read_boscp_xavier_non_dom_pts(instance_id::String)
    
 Returns the Efficient Frontier of the Bi Objective Set Covering Problem ( Xavier Instance ) corresponding to `instance_id`.
"""
function read_boscp_xavier_non_dom_pts(instance_id::String)
    select_and_sort_non_dom_sols(readdlm("$(xavier_boscp_non_dom_sols_locations)$(instance_id).txt"))
end

"""
    read_boscp_xavier(instance_id::String)
    
 Returns a `BOBPInstance` of a Bi Objective Set Covering Problem ( Xavier Instance ) and its Efficient Frontier.
"""
function read_boscp_xavier(instance_id::String)
    (read_boscp_xavier_instance(instance_id), read_boscp_xavier_non_dom_pts(instance_id))
end

#####################################################################
# Reading a Bi Objective Set Packing Problem Instance               #
# Xavier Instances                                                  #
#####################################################################

global xavier_bospp_instance_location = "$(instance_location)/BOSPP/Xavier_Instances/instances/"
global xavier_bospp_non_dom_sols_locations = "$(instance_location)/BOSPP/Xavier_Instances/non dominated points/"

"""
    read_bospp_xavier_instance(instance_id::String)

 Returns a `BOBPInstance` of a Bi Objective Set Packing Problem ( Xavier Instance ) corresponding to `filename`.
"""
function read_bospp_xavier_instance(instance_id::String)
    lines_in_file = readlines("$(xavier_bospp_instance_location)$(instance_id).dat")
    m, n = [parse(Int64, split(lines_in_file[1])[i]) for i in 1:2]
    c1 = -1.0[parse(Int64,split(lines_in_file[2])[i]) for i in 1:n]
    c2 = -1.0[parse(Int64,split(lines_in_file[3])[i]) for i in 1:n]
    A = spzeros(m, n)
    pos = 1
    for i in 4:3+2m
        if i%2 == 0
            continue
        end
        tmp = split(lines_in_file[i])
        A[pos,[parse(Int64, tmp[j]) for j in 1:length(tmp)]] = -1.0
        pos += 1
    end
    BOBPInstance(c1, c2, A, fill(-1.0, m), fill(Inf, m))
end

"""
    read_bospp_xavier_non_dom_pts(instance_id::String)
    
 Returns the Efficient Frontier of a Bi Objective Set Packing Problem ( Xavier Instance )
"""
function read_bospp_xavier_non_dom_pts(instance_id::String)
    select_and_sort_non_dom_sols(-1.0*readdlm("$(xavier_bospp_non_dom_sols_locations)$(instance_id).01"))
end

"""
    read_bospp_xavier(instance_id::String)

 Returns a `BOBPInstance` of a Bi Objective Set Packing Problem ( Xavier Instance ) and its Efficient Frontier.
"""
function read_bospp_xavier(instance_id::String)
    (read_bospp_xavier_instance(instance_id), read_bospp_xavier_non_dom_pts(instance_id))
end

#####################################################################
# Reading a Biobjective Mixed Binary Linear Programming Instance    #
# Hadi Instances                                                    #
#####################################################################

global hadi_bomip_instance_location = "$(instance_location)/BOMIP/Hadi_Instances/instances/"
global hadi_bomip_non_dom_sols_locations = "$(instance_location)/BOMIP/Hadi_Instances/non dominated points/"

"""
    read_bomip_hadi_instance(num::Int64, ϵ::Float64=1.0e-9)

 Returns a `BOMBLPInstance` corresponding to the `num`th Bi Objective Mixed Integer Programming Problem ( Hadi Instance )
"""
function read_bomip_hadi_instance(num::Int64, ϵ::Float64=1.0e-9)
    data = readdlm("$(hadi_bomip_instance_location)$(num)dat.txt")
    m = convert(Int64, data[1,1])
    n_c = convert(Int64, data[2,1])
    n_b = convert(Int64, data[3,1])
    c1 = vcat([convert(Float64, data[4, i]) for i in 1:n_c], [convert(Float64, data[5, i]) for i in 1:n_b])
    c2 = vcat([convert(Float64, data[6, i]) for i in 1:n_c], [convert(Float64, data[7, i]) for i in 1:n_b])
    A = spzeros(m, n_c+n_b)
    A[1:(m-1), 1:n_c] = [convert(Float64, data[i, j]) for i in 8:(7+n_c), j in 1:(m-1)]'
    for i in 1:n_b
        A[i, n_c+i] = convert(Float64, data[8+n_c, i])
    end
    A[m, n_c+1:n_c+n_b] = 1.0
    cons_ub = [[convert(Float64, data[9+n_c,i]) for i in 1:(m-1)]..., n_b/3]
    BOMBLPInstance(vcat(fill(:Cont, n_c), fill(:Bin, n_b)), zeros(n_c+n_b), vcat(fill(Inf, n_c), ones(n_b)), c1, c2, -1.0*A, -1.0*cons_ub, fill(Inf, m), ϵ)
end

"""
    read_bomip_hadi_non_dom_pts(num::Int64)

 Returns the Efficient Frontier of the `num`th Bi Objective Mixed Integer Programming Problem ( Hadi Instance )
"""
function read_bomip_hadi_non_dom_pts(num::Int64)
    readdlm("$(hadi_bomip_non_dom_sols_locations)$(num)out.txt")
end

"""
    read_bomip_hadi(num::Int64, ϵ::Float64=1.0e-9)
    
 Returns a `BOMBLPInstance` corresponding to the `num`th Bi Objective Mixed Integer Programming Problem ( Hadi Instance ) and its Efficient Frontier
"""
function read_bomip_hadi(num::Int64, ϵ::Float64=1.0e-9)
    (read_bomip_hadi_instance(num, ϵ), read_bomip_hadi_non_dom_pts(num))
end

#####################################################################
# Reading a Biobjective Uncapacitated Facility Location Problem     #
# Hadi Instances                                                    #
#####################################################################

global hadi_bouflp_instance_location = "$(instance_location)/BOUFLP/Hadi_Instances/instances/"
global hadi_bouflp_non_dom_sols_locations = "$(instance_location)/BOUFLP/Hadi_Instances/non dominated points/"

"""
    read_bouflp_hadi_instance(num::Int64, ϵ::Float64=1.0e-9)

 Returns a `BOMBLPInstance` corresponding to the `num`th Bi Objective Uncapacitated Facility Location Problem ( Hadi Instance )
"""
function read_bouflp_hadi_instance(num::Int64, ϵ::Float64=1.0e-9)
    data = readdlm("$(hadi_bouflp_instance_location)$(num)dat.txt")
    n_f = convert(Int64, data[1,1])
    n_d = convert(Int64, data[2,1])
    c1 = vcat(vec([ convert(Float64, data[i, j]) for i in 3:(2+n_d), j in 1:n_f ]'), [convert(Float64, data[3+n_d, i]) for i in 1:n_f])
    c2 = vcat(vec([ convert(Float64, data[i, j]) for i in (4+n_d):(3+2n_d), j in 1:n_f ]'), zeros(n_f))
    A = spzeros(n_d*(n_f+1), (n_d+1)*n_f)
    for i in 1:n_d
        A[i, (i-1)*n_f+1:i*n_f] = 1.0
    end
    pos = n_d+1
    for i in 1:n_d, j in 1:n_f
        A[pos, (i-1)*n_f+j] = -1.0
        A[pos, n_d*n_f+j] = 1.0
        pos += 1
    end
    cons_lb = vcat(ones(n_d), zeros(n_d*n_f))
    cons_ub = vcat(ones(n_d), fill(Inf, n_d*n_f))
    BOMBLPInstance(vcat(fill(:Cont, n_d*n_f), fill(:Bin, n_f)), zeros((n_d+1)*n_f), ones((n_d+1)*n_f), c1, c2, A, cons_lb, cons_ub, ϵ)
end

"""
    read_bouflp_hadi_non_dom_pts(num::Int64)

 Returns the Efficient Frontier of the `num`th Bi Objective Uncapacitated Facility Location Problem ( Hadi Instance )
"""
function read_bouflp_hadi_non_dom_pts(num::Int64)
    readdlm("$(hadi_bouflp_non_dom_sols_locations)$(num)out.txt")
end

"""
    read_bouflp_hadi(num::Int64, ϵ::Float64=1.0e-9)

 Returns a `BOMBLPInstance` corresponding to the `num`th Bi Objective Uncapacitated Facility Location Problem ( Hadi Instance ) and its Efficient Frontier
"""
function read_bouflp_hadi(num::Int64, ϵ::Float64=1.0e-9)
    (read_bouflp_hadi_instance(num, ϵ), read_bouflp_hadi_non_dom_pts(num))
end

#####################################################################
# Reading a Biobjective Best Subset Selection Problem               #
# Hadi Instances                                                    #
#####################################################################

global hadi_bobss_instance_location = "$(instance_location)/BOBSS/Hadi_Instances/instances/"
global hadi_bobss_non_dom_sols_locations = "$(instance_location)/BOBSS/Hadi_Instances/non dominated points/"

"""
    read_bobss_hadi_xycor(p::Int64, n::Int64, instance::Int64)

 Returns `y::Vector{Float64}`, `x::Array{Float64, 2}` and `correlation::Vector{Float64}` corresponding to `p`, `n` and `instance` Bi Objective Best Subset Selection Problem ( Hadi Instance )
"""
function read_bobss_hadi_xycor(p::Int64, n::Int64, instance::Int64)
    data = readdlm("$(hadi_bobss_instance_location)P$(p)N$(n)I$(instance).txt")
    y, x = convert(Vector{Float64}, data[3+n,:]), convert(Array{Float64, 2}, data[3:2+n,1:p])
    correlation = [ abs(cor(y, x[:, i])) for i in 1:size(x)[2] ]
    correlation_ = sortrows(hcat(correlation, [1:length(correlation)...]), rev=true)
    correlation_ = correlation_[!isnan(correlation_[:, 1]), :]
    y, x, correlation_
end

"""
    generate_bobss_bomblpinstance(y::Vector{Float64}, x::Array{Float64, 2}, M::Float64, ϵ::Float64=1.0e-9)

 Returns a `BOMBLPInstance` for the Best Subset Selection Problem corresponding to `y`, `x` and `M`
"""
function generate_bobss_bomblpinstance(y::Vector{Float64}, x::Array{Float64, 2}, M::Float64, ϵ::Float64=1.0e-9)
    n, p = size(x)
    c1 = vcat(zeros(n+p), ones(p))
    c2 = vcat(ones(n), zeros(2p))
    A = spzeros(2n+2p, n+2p)
    for i in 1:p
        A[2i-1, n+i] = -1.0
        A[2i-1, n+p+i] = M
        A[2i, n+i] = 1.0
        A[2i, n+p+i] = -1.0*M
    end
    for i in 1:n
        A[2p+2i-1, i] = 1.0
        A[2p+2i-1, n+1:n+p] = x[i, :]
        A[2p+2i, i] = 1.0
        A[2p+2i, n+1:n+p] = -1.0*x[i, :]
    end
    cons_lb = zeros(2p)
    for i in 1:n
        push!(cons_lb, y[i])
        push!(cons_lb, -1.0*y[i])
    end
    BOMBLPInstance(vcat(fill(:Cont, n+p), fill(:Bin, p)), vcat(zeros(n), fill(-Inf, p), zeros(p)), vcat(fill(Inf, n+p), ones(p)), c1, c2, A, cons_lb, fill(Inf, 2n+2p), ϵ)
end

"""
    read_bobss_hadi_non_dom_pts(p::Int64, n::Int64, instance::Int64)

 Returns the Efficient Frontier of the Bi Objective Best Subset Selection Problem ( Hadi Instance ) corresponding to `p`, `n` and `instance`
"""
function read_bobss_hadi_non_dom_pts(p::Int64, n::Int64, instance::Int64)
    data = readdlm("$(hadi_bobss_non_dom_sols_locations)P$(p)N$(n)I$(instance)Result.txt")
    data = convert(Array{Float64, 2}, data[1:end-3,[1,3]])
    select_and_sort_non_dom_sols(hcat(vec(data[:, 2]), vec(data[:, 1])))
end

"""
    read_bobss_hadi(p::Int64, n::Int64, instance::Int64, M::Float64=1.0e10, ϵ::Float64=1.0e-9)

 Returns `y`, `x`, `correlation`, `BOMBLPInstance` and the Efficient Frontier for the Best Subset Selection Problem ( Hadi Instance ) corresponding to `y`, `x` and `M`
"""
function read_bobss_hadi(p::Int64, n::Int64, instance::Int64, M::Float64=1.0e10, ϵ::Float64=1.0e-9)
    y, x, correlation_ = read_bobss_hadi_xycor(p, n, instance)
    instance_ = generate_bobss_bomblpinstance(y, x, M, ϵ)
    (y, x, correlation_, instance_, read_bobss_hadi_non_dom_pts(p, n, instance))
end

#####################################################################
# Reading a Multiobjective Assignment Problem Instance              #
# Kirlik Instances                                                  #
#####################################################################

global kirlik_moap_instance_location = "$(instance_location)/MOAP/Kirlik_Instances/instances/"
global kirlik_moap_non_dom_sols_locations = "$(instance_location)/MOAP/Kirlik_Instances/non dominated points/"

"""
    read_moap_kirlik_instance(p::Int64, n::Int64, instance::Int64)
    
 Returns a `MOBPInstance` of a Multi Objective Assignment Problem ( Kirlik Instance ) corresponding to `p`, `n` and `instance`
"""
function read_moap_kirlik_instance(p::Int64, n::Int64, instance::Int64)
    lines_in_file = readlines("$(kirlik_moap_instance_location)AP_p-$(p)_n-$(n)_ins-$(instance).dat")
    c = zeros(p, n^2)
    p_pos = 1
    pos = 1
    tmp = Int64[]
    for i in 3:length(lines_in_file)
        if pos == n + 1
            pos = 1
            c[p_pos,:] = float(tmp)
            p_pos += 1
            tmp = Int64[]
            continue
        end
        if pos < n
            tmp1 = split(lines_in_file[i], ",")[1:end-1]
        else
            tmp1 = split(lines_in_file[i], ",")
        end
        push!(tmp, parse(Int64, split(tmp1[1], "[")[end]))
        for j in 2:length(tmp1)-1
            push!(tmp, parse(Int64, tmp1[j]))
        end
        push!(tmp, parse(Int64,split(tmp1[end], "]")[1]))
        pos += 1
    end
    A = spzeros(2n, n^2)
    for i in 1:n
        A[i, n*(i-1)+1:n*i] = 1.0
    end
    for i in n+1:2n, j in 1:n
        A[i, n*(j-1)+i-n] = 1.0
    end
    MOBPInstance(c, A, ones(2n), ones(2n))
end

"""
    read_moap_kirlik_non_dom_pts(p::Int64, n::Int64, instance::Int64)

 Returns the Efficient Frontier of the Multi Objective Assignment Problem ( Kirlik Instance ) corresponding to `p`, `n` and `instance`
"""
function read_moap_kirlik_non_dom_pts(p::Int64, n::Int64, instance::Int64)
    readdlm("$(kirlik_moap_non_dom_sols_locations)EffSet_AP_p-$(p)_n-$(n)_ins-$(instance).txt")
end

"""
    read_moap_kirlik(p::Int64, n::Int64, instance::Int64)

 Returns `MOBPInstance` and the Efficient Frontier of the Multi Objective Assignment Problem ( Kirlik Instance ) corresponding to `p`, `n` and `instance`
"""
function read_moap_kirlik(p::Int64, n::Int64, instance::Int64)
    (read_moap_kirlik_instance(p, n, instance), read_moap_kirlik_non_dom_pts(p, n, instance))
end

#####################################################################
# Reading a Multiobjective Assignment Problem Instance              #
# Kirlik Instances                                                  #
#####################################################################

global kirlik_mokp_instance_location = "$(instance_location)/MOKP/Kirlik_Instances/instances/"
global kirlik_mokp_non_dom_sols_locations = "$(instance_location)/MOKP/Kirlik_Instances/non dominated points/"

"""
    read_mokp_kirlik_instance(p::Int64, n::Int64, instance::Int64)

 Returns a `MOBPInstance` of a Multi Objective Knapsack Problem ( Kirlik Instance ) corresponding to `p`, `n` and `instance`
"""
function read_mokp_kirlik_instance(p::Int64, n::Int64, instance::Int64)
    lines_in_file = readlines("$(kirlik_mokp_instance_location)KP_p-$(p)_n-$(n)_ins-$(instance).dat")
    b = float(lines_in_file[3])
    c = zeros(p, n)
    A = zeros(1, n)
    for i in 4:(4+p)
        tmp = Int64[]
        if i < 4+p-1
            tmp1 = split(lines_in_file[i], ",")[1:end-1]
        else
            tmp1 = split(lines_in_file[i], ",")
        end
        push!(tmp, parse(Int64, split(tmp1[1], "[")[end]))
        for j in 2:length(tmp1)-1
            push!(tmp, parse(Int64, tmp1[j]))
        end
        push!(tmp, parse(Int64,split(tmp1[end], "]")[1]))
        if i < 4+p
            c[i-3, :] = float(tmp)
        else
            A[1, :] = float(tmp)
        end
    end
    MOBPInstance(-1.0*c, -1.0*A, [-b], [Inf])
end

"""
    read_mokp_kirlik_non_dom_pts(p::Int64, n::Int64, instance::Int64)

 Returns the Efficient Frontier of the Multi Objective Knapsack Problem ( Kirlik Instance ) corresponding to `p`, `n` and `instance`
"""
function read_mokp_kirlik_non_dom_pts(p::Int64, n::Int64, instance::Int64)
    readdlm("$(kirlik_mokp_non_dom_sols_locations)EffSet_KP_p-$(p)_n-$(n)_ins-$(instance).txt")
end

"""
    read_mokp_kirlik(p::Int64, n::Int64, instance::Int64)

 Returns `MOBPInstance` and the Efficient Frontier of the Multi Objective Knapsack Problem ( Kirlik Instance ) corresponding to `p`, `n` and `instance`
"""

function read_mokp_kirlik(p::Int64, n::Int64, instance::Int64)
    (read_mokp_kirlik_instance(p, n, instance), read_mokp_kirlik_non_dom_pts(p, n, instance))
end

#####################################################################
# Reading a Multibjective Mixed Binary Problem                      #
# Aritra Instances                                                  #
#####################################################################

global aritra_mombp_instance_location = "$(instance_location)/MOMIP/Aritra_Instances/instances/"
global aritra_mombp_non_dom_sols_locations = "$(instance_location)/MOMIP/Aritra_Instances/non dominated points/"

"""
    read_mombp_aritra_instance(p::Int64, m::Int64, instance::Int64)

 Returns a `MOMBLPInstance` of a Multiobjective Mixed Binary Problem ( Aritra Instances ) corresponding to `p`, `m` and `instance`.
"""
function read_mombp_aritra_instance(p::Int64, m::Int64, instance::Int64)
    data = readdlm("$(aritra_mombp_instance_location)$(p)_$(m)_$(instance).txt")
    if p == 2
        BOMBLPInstance([fill(:Cont, Int64(m/2))..., fill(:Bin, Int64(m/2))...], zeros(m), [fill(Inf, Int64(m/2))..., fill(1.0, Int64(m/2))...], Vector{Float64}(data[1, :]), Vector{Float64}(data[2, :]), Array{Float64, 2}(data[p+1:end-1, :]), Vector{Float64}(data[end, :]), fill(Inf, m), 1.0e-9)
    else
        MOMBLPInstance([fill(:Cont, Int64(m/2))..., fill(:Bin, Int64(m/2))...], zeros(m), [fill(Inf, Int64(m/2))..., fill(1.0, Int64(m/2))...], Array{Float64, 2}(data[1:p, :]), Array{Float64, 2}(data[p+1:end-1, :]), Vector{Float64}(data[end, :]), fill(Inf, m), 1.0e-9)
    end
end

"""
    read_mombp_aritra_non_dom_pts(p::Int64, m::Int64, instance::Int64)

 Returns the Approximate Efficient Frontier of a Multiobjective Mixed Binary Problem ( Aritra Instances ) corresponding to `p`, `m` and `instance`.
"""
function read_mombp_aritra_non_dom_pts(p::Int64, m::Int64, instance::Int64)
    readdlm("$(aritra_mombp_non_dom_sols_locations)MOMBP_Aritra_$(p)_$(m)_$(instance)_True_Frontier.txt")
end

"""
    read_mombp_aritra(p::Int64, m::Int64, instance::Int64)

 Returns `MOMBLPInstance` and the Approximate Efficient Frontier of a Multiobjective Mixed Binary Problem ( Aritra Instances ) corresponding to `p`, `m` and `instance`.
"""
function read_mombp_aritra(p::Int64, m::Int64, instance::Int64)
    (read_mombp_aritra_instance(p, m, instance), read_mombp_aritra_non_dom_pts(p, m, instance))
end
