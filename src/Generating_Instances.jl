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

#####################################################################
# Multiobjective Multi-Dimensional 0-1 Knapsack Problem             #
#####################################################################

"""
    generate_knapsack_instances(num_obj::Int64=2, num_var::Int64=10, num_cons::Int64=1, sparse::Bool=true)

 Returns a `MOBPInstance` of a random Multi Objective Knapsack Problem with `num_obj` objectives `num_var` binary variables and `num_cons` inequality constraints.
"""
function generate_knapsack_instances(num_obj::Int64=2, num_var::Int64=10, num_cons::Int64=1, sparse::Bool=true)
    if sparse
        A = rand(0:100, num_cons, num_var)
    else
        A = rand(1:100, num_cons, num_var)
    end
    MOBPInstance(-1.0*rand(1:100, num_obj, num_var), -1.0*A, -1.0*collect([floor(sum(A[i,:])/2) for i in 1:num_cons]), fill(Inf, num_cons))
end

#####################################################################
# Biobjective Multi-Dimensional 0-1 Knapsack Problem                #
#####################################################################
"""
    generate_bokp_instances(num_var::Int64, num_cons::Int64, sparse::Bool)
    
 Returns a `BOBPInstance` of a random Bi Objective Knapsack Problem with `num_var` binary variables and `num_cons` inequality constraints.
"""
function generate_bokp_instances(num_var::Int64, num_cons::Int64, sparse::Bool)
    if sparse
        A = rand(0:100, num_cons, num_var)
    else
        A = rand(1:100, num_cons, num_var)
    end
    BOBPInstance(-1.0*rand(1:100, num_var), -1.0*rand(1:100, num_var), -1.0*A, -1.0*collect([floor(sum(A[i,:])/2) for i in 1:num_cons]), fill(Inf, num_cons))
end

#####################################################################
# Multiobjective General Mixed Binary Problem                       #
#####################################################################

"""
    generate_mixed_binary_instances(num_obj::Int64=2, num_cont_var::Int64=10, num_bin_var::Int64=10, num_cons::Int64=1)

 Returns a `MOMBLPInstance` or a `BOMBLPInstance` of a random Multiobjective Mavrotas Mixed Binary Problem.
"""
function generate_mixed_binary_instances(num_obj::Int64=2, num_cont_var::Int64=10, num_bin_var::Int64=10, num_cons::Int64=1)
    c = hcat(rand([-10:10...], num_obj, num_cont_var), rand([-200:200...], num_obj, num_bin_var))	
    A = -1.0*rand([-1:20...], num_cons, num_cont_var+num_bin_var)
    A[num_bin_var+1:num_cons-1, num_cont_var+1:end] = 0.0
    A[num_cons, 1:num_cont_var] = 0.0
    A[num_cons, num_cont_var+1:end] = -1.0
    cons_lb = -1.0*[rand([50:100...], num_cons-1)..., num_bin_var/3]
    if num_obj == 2
        BOMBLPInstance([fill(:Cont, num_cont_var)..., fill(:Bin, num_bin_var)...], zeros(num_cont_var+num_bin_var), [fill(Inf, num_cont_var)..., fill(1.0, num_bin_var)...], Vector{Float64}(c[1, :]), Vector{Float64}(c[2, :]), Array{Float64, 2}(A), Vector{Float64}(cons_lb), fill(Inf, num_cons), 1.0e-9)
    else
        MOMBLPInstance([fill(:Cont, num_cont_var)..., fill(:Bin, num_bin_var)...], zeros(num_cont_var+num_bin_var), [fill(Inf, num_cont_var)..., fill(1.0, num_bin_var)...], Array{Float64, 2}(c), Array{Float64, 2}(A), Vector{Float64}(cons_lb), fill(Inf, num_cons), 1.0e-9)
    end
end

function generate_mavrotas_mixed_binary_instances(num_obj::Vector{Int64}=[3, 4, 5], num_cons::Vector{Int64}=[20, 40, 80, 160, 320, 640], num_instances::Int64=5)
    for i in num_obj, j in num_cons, k in 1:num_instances
        instance = generate_mixed_binary_instances(i, Int64(0.5*j), Int64(0.5*j), j)		
        data = zeros(i+j+1, j)
        if i == 2
            data[1, :] = instance.c1
            data[2, :] = instance.c2
        else
            data[1:i, :] = instance.c
        end
        data[i+1:end-1, :] = instance.A
        data[end, :] = instance.cons_lb
        writedlm("$(i)_$(j)_$(k).txt", data)
    end
end
