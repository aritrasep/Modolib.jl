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

module Modolib

using Modof

include("Api.jl")
include("Generating_Instances.jl")
include("Reading_and_Writing_General_Instances.jl")

export read_boap_hadi_instance, read_boap_hadi_non_dom_pts, read_boap_hadi
export read_bokp_hadi_instance, read_bokp_hadi_non_dom_pts, read_bokp_hadi
export read_bokp_xavier_instance, read_bokp_xavier_non_dom_pts, read_bokp_xavier1, read_bokp_xavier2
export read_bokp_aritra_instance
export read_boscp_xavier_instance, read_boscp_xavier_non_dom_pts, read_boscp_xavier
export read_bospp_xavier_instance, read_bospp_xavier_non_dom_pts, read_bospp_xavier

export read_bomip_hadi_instance, read_bomip_hadi_non_dom_pts, read_bomip_hadi
export read_bouflp_hadi_instance, read_bouflp_hadi_non_dom_pts, read_bouflp_hadi
export read_bobss_hadi_xycor, generate_bobss_bomblpinstance, read_bobss_hadi_non_dom_pts, read_bobss_hadi

export read_moap_kirlik_instance, read_moap_kirlik_non_dom_pts, read_moap_kirlik
export read_mokp_kirlik_instance, read_mokp_kirlik_non_dom_pts, read_mokp_kirlik

export read_mombp_aritra_instance, read_mombp_aritra_non_dom_pts, read_mombp_aritra

export generate_knapsack_instances, generate_bokp_instances, generate_mixed_binary_instances, generate_mavrotas_mixed_binary_instances, generate_biobjective_best_subset_selection_instances

export write_bobpinstance, read_bobpinstance

end
