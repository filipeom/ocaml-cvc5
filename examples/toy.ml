open Cvc5

let tm = TermManager.mk_tm ()

let solver = Solver.mk_solver tm

let int_sort = Sort.mk_int_sort tm

let x = Term.mk_const_s tm int_sort "x"

let zero = Term.mk_int tm 0

let () =
  (* x > 0 *)
  let x_gt_zero = Term.mk_term tm Kind.Geq [| x; zero |] in
  Printf.printf "term 1: %s\n" (Term.to_string x_gt_zero);
  (* x <= 0 *)
  let x_lt_zero = Term.mk_term tm Kind.Leq [| x; zero |] in
  Printf.printf "term 2: %s\n" (Term.to_string x_lt_zero);
  Solver.assert_formula solver x_gt_zero;
  Solver.assert_formula solver x_lt_zero;
  let r = Solver.check_sat solver in
  let b = Result.is_sat r in
  Solver.delete_solver solver;
  TermManager.delete_tm tm;
  match b with true -> print_endline "sat" | false -> print_endline "unsat"