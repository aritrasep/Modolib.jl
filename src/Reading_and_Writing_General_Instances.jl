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
# Writing a Biobjective Binary Program                              #
#####################################################################

"""
    write_bobpinstance(instance::BOBPInstance, filename::AbstractString)

 Writing a `BOBPInstance` to `filename`.
"""
function write_bobpinstance(instance::BOBPInstance, filename::AbstractString)
    file = open(filename, "w")
    write(file, "minimize ")
    for i in 1:length(instance.c1)
        write(file, "$(instance.c1[i]) ")
    end
    write(file, "\n")
    write(file, "minimize ")
    for i in 1:length(instance.c2)
        write(file, "$(instance.c2[i]) ")
    end
    write(file, "\n")
    for i in 1:size(instance.A)[1]
        for j in 1:length(instance.c1)
            write(file, "$(instance.A[i, j]) ")
        end
        if instance.cons_lb[i] == instance.cons_ub[i]
            write(file, "== $(instance.cons_lb[i])\n")
        else
            if instance.cons_lb[i] == -Inf
                write(file, "<= $(instance.cons_ub[i])\n")
            else
                write(file, ">= $(instance.cons_lb[i])\n")
            end
        end
    end
    close(file)
end

#####################################################################
# Reading a Biobjective Binary Program                              #
#####################################################################

"""
    read_bobpinstance(filename::AbstractString)

 Returns a `BOBPInstance` of a Bi Objective Binary Problem corresponding to `filename`
"""
function read_bobpinstance(filename::AbstractString)
    lines_in_file = readlines(filename)
    c1, c2 = Float64[], Float64[]
    obj_sense = ones(Int64, 2)
    for i in 1:2
        tmp = split(lines_in_file[i])
        if tmp[1] == "maximize"
            obj_sense[i] = -1
        end
        if i == 1
            c1 = obj_sense[i]*[float(tmp[j]) for j in 2:length(tmp)]
        else
            c2 = obj_sense[i]*[float(tmp[j]) for j in 2:length(tmp)]
        end
    end
    m = length(lines_in_file)-2
    A = zeros(m, length(c1))
    cons_lb = fill(-Inf, m)
    cons_ub = fill(Inf, m)
    for i in 3:length(lines_in_file)
        tmp = split(lines_in_file[i])
        for j in 1:length(c1)
            A[i-2, j] = float(tmp[j])
        end
        if tmp[length(c1)+1] == "=="
            cons_lb[i-2] = float(tmp[length(c1)+2])
            cons_ub[i-2] = float(tmp[length(c1)+2])
        else
            if tmp[length(c1)+1] == ">="
                cons_lb[i-2] = float(tmp[length(c1)+2])
            else
                cons_ub[i-2] = float(tmp[length(c1)+2])
            end
        end
    end
    BOBPInstance(c1, c2, A, cons_lb, cons_ub)
end
