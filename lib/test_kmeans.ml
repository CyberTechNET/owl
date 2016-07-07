module MX = Matrix.Dense
module LL = Learn

let _ =
  let x = MX.load "test_kmeans.data" in
  let m, n = MX.shape x in
  print_endline (Bytes.make 60 '+');
  Printf.printf "| test matrix size: %i x %i\n" m n;
  print_endline (Bytes.make 60 '-');
  print_endline "test on input data ...";
  let centers, _ = LL.kmeans x 2 in MX.pprint centers;
  print_endline "test on random data ...";
  let x = MX.uniform 1000000 8 in LL.kmeans x 3
