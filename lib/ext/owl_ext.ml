(*
 * OWL - an OCaml numerical library for scientific computing
 * Copyright (c) 2016-2017 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

include Owl_ext_types

include Owl_ext_uniop

include Owl_ext_binop


module Dense = struct

  module Ndarray = Owl_ext_dense_ndarray

  module Matrix = Owl_ext_dense_matrix

end
