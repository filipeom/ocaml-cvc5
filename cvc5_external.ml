(*------------------------------------------------------------------------*)
(*  Copyright (C) 2024 formalsec                                       *)
(*                                                                        *)
(*  This file is part of ocaml-cvc5                                       *)
(*                                                                        *)
(*  ocaml-cvc5 is free software: you can redistribute it and/or modify    *)
(*  it under the terms of the GNU General Public License as published     *)
(*  by the Free Software Foundation, either version 3 of the License,     *)
(*  or (at your option) any later version.                                *)
(*                                                                        *)
(*  ocaml-cvc5 is distributed in the hope that it will be useful,         *)
(*  but WITHOUT ANY WARRANTY; without even the implied warranty of        *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  *)
(*  See the GNU General Public License for more details.                  *)
(*                                                                        *)
(*  You should have received a copy of the GNU General Public License     *)
(*  along with ocaml-cvc5. If not, see <http://www.gnu.org/licenses/>.    *)
(*------------------------------------------------------------------------*)

(** External declarations for cvc5's OCaml bindings. *)

(**/**)

type ptr

and result = ptr

and synth_result = ptr

and sort = ptr

and term = ptr

and op = ptr

and datatype = ptr

and datatype_constructor_decl = ptr

and datatype_decl = ptr

and datatype_selector = ptr

and datatype_constructor = ptr

and grammar = ptr

and solver = ptr

and term_manager = ptr

and option_info = ptr

and proof = ptr

and proof_rule = ptr

and statistics = ptr

and unknown_explanation = ptr

and sort_kind = ptr

and kind = ptr

and rounding_mode = ptr

and proof_format = ptr

and proof_component = ptr

and learned_lit_type = ptr

and block_model_mode = ptr

and find_synth_target = ptr

external result_is_sat : result -> bool = "ocaml_cvc5_stub_result_is_sat"
[@@noalloc]

external result_is_unsat : result -> bool = "ocaml_cvc5_stub_result_is_unsat"
[@@noalloc]

external result_is_unknown : result -> bool
  = "ocaml_cvc5_stub_result_is_unknown"
[@@noalloc]

external result_equal : result -> result -> bool
  = "ocaml_cvc5_stub_result_equal"
[@@noalloc]

external result_to_string : result -> string
  = "ocaml_cvc5_stub_result_to_string"

external mk_true : term_manager -> term = "ocaml_cvc5_stub_mk_true"

external mk_false : term_manager -> term = "ocaml_cvc5_stub_mk_false"

external mk_bool : term_manager -> bool -> term = "ocaml_cvc5_stub_mk_bool"

external mk_int : term_manager -> int -> term = "ocaml_cvc5_stub_mk_int"

external mk_real_s : term_manager -> string -> term
  = "ocaml_cvc5_stub_mk_real_s"

external mk_real_i : term_manager -> (int[@untagged]) -> term
  = "ocaml_cvc5_stub_mk_real_i" "native_cvc5_stub_mk_real_i"

external mk_real : term_manager -> (int[@untagged]) -> (int[@untagged]) -> term
  = "ocaml_cvc5_stub_mk_real" "native_cvc5_stub_mk_real"

external mk_bv : term_manager -> (int[@untagged]) -> (int64[@unboxed]) -> term
  = "ocaml_cvc5_stub_mk_bv" "native_cvc5_stub_mk_bv"

external mk_bv_s :
  term_manager -> (int[@untagged]) -> string -> (int[@untagged]) -> term
  = "ocaml_cvc5_stub_mk_bv_s" "native_cvc5_stub_mk_bv_s"

external mk_string : term_manager -> string -> bool -> term
  = "ocaml_cvc5_stub_mk_string"

external mk_fp :
  term_manager -> (int[@untagged]) -> (int[@untagged]) -> term -> term
  = "ocaml_cvc5_stub_mk_fp" "native_cvc5_stub_mk_fp"

external mk_term : term_manager -> int -> term array -> term
  = "ocaml_cvc5_stub_mk_term"

external mk_term_op : term_manager -> op -> term array -> term
  = "ocaml_cvc5_stub_mk_term_with_op"

external term_get_int_val : term -> string = "ocaml_cvc5_stub_get_int_value"

external term_is_int_val : term -> bool = "ocaml_cvc5_stub_is_int_value"
[@@noalloc]

external term_get_real_val : term -> string = "ocaml_cvc5_stub_get_real_value"

external term_is_real_val : term -> bool = "ocaml_cvc5_stub_is_real_value"
[@@noalloc]

external term_get_string_val : term -> string
  = "ocaml_cvc5_stub_get_string_value"

external term_is_string_val : term -> bool = "ocaml_cvc5_stub_is_string_value"
[@@noalloc]

external term_is_int32_val : term -> bool = "ocaml_cvc5_stub_is_int32_value"
[@@noalloc]

external term_get_int32_val : term -> int32 = "ocaml_cvc5_stub_get_int32_value"
[@@noalloc]

external term_is_uint32_val : term -> bool = "ocaml_cvc5_stub_is_uint32_value"
[@@noalloc]

external term_get_uint32_val : term -> int = "ocaml_cvc5_stub_get_uint32_value"
[@@noalloc]

external term_is_int64_val : term -> bool = "ocaml_cvc5_stub_is_int64_value"
[@@noalloc]

external term_get_int64_val : term -> int64 = "ocaml_cvc5_stub_get_int64_value"
[@@noalloc]

external term_is_uint64_val : term -> bool = "ocaml_cvc5_stub_is_uint64_value"
[@@noalloc]

external term_get_uint64_val : term -> int = "ocaml_cvc5_stub_get_uint64_value"
[@@noalloc]

external term_is_bv_val : term -> bool = "ocaml_cvc5_stub_is_bv_value"
[@@noalloc]

external term_get_bv_val : term -> (int[@untagged]) -> string
  = "ocaml_cvc5_stub_get_bv_value" "native_cvc5_stub_get_bv_value"

external term_is_rm_val : term -> bool = "ocaml_cvc5_stub_is_rm_value"
[@@noalloc]

external term_get_rm_val : term -> int = "ocaml_cvc5_stub_get_rm_value"
[@@noalloc]

external term_is_bool_val : term -> bool = "ocaml_cvc5_stub_is_bool_value"
[@@noalloc]

external term_get_bool_val : term -> bool = "ocaml_cvc5_stub_get_bool_value"
[@@noalloc]

external get_boolean_sort : term_manager -> sort
  = "ocaml_cvc5_stub_get_boolean_sort"

external get_integer_sort : term_manager -> sort
  = "ocaml_cvc5_stub_get_integer_sort"

external get_real_sort : term_manager -> sort = "ocaml_cvc5_stub_get_real_sort"

external get_string_sort : term_manager -> sort
  = "ocaml_cvc5_stub_get_string_sort"

external mk_bitvector_sort : term_manager -> int -> sort
  = "ocaml_cvc5_stub_mk_bitvector_sort"

external get_rm_sort : term_manager -> sort = "ocaml_cvc5_stub_get_rm_sort"

external mk_fp_sort :
  term_manager -> (int[@untagged]) -> (int[@untagged]) -> sort
  = "ocaml_cvc5_stub_mk_fp_sort" "native_cvc5_stub_mk_fp_sort"

external mk_seq_sort : term_manager -> sort -> sort
  = "ocaml_cvc5_stub_mk_seq_sort"

external mk_uninterpreted_sort : term_manager -> string -> sort
  = "ocaml_cvc5_stub_mk_uninterpreted_sort"

external sort_get_bv_size : sort -> int32 = "ocaml_cvc5_stub_sort_get_bv_size"
[@@noalloc]

external sort_to_string : sort -> string = "ocaml_cvc5_stub_sort_to_string"

external sort_equal : sort -> sort -> bool = "ocaml_cvc5_stub_sort_equal"
[@@noalloc]

external mk_const_s : term_manager -> sort -> string -> term
  = "ocaml_cvc5_stub_mk_const_s"

external mk_const : term_manager -> sort -> term = "ocaml_cvc5_stub_mk_const"

external mk_roundingmode : term_manager -> int -> rounding_mode
  = "ocaml_cvc5_stub_mk_rounding_mode"

external term_to_string : term -> string = "ocaml_cvc5_stub_term_to_string"

external term_equal : term -> term -> bool = "ocaml_cvc5_stub_term_equal"
[@@noalloc]

external term_id : term -> int = "ocaml_cvc5_stub_term_id" [@@noalloc]

external term_kind : term -> int = "ocaml_cvc5_stub_term_kind" [@@noalloc]

external term_sort : term -> sort = "ocaml_cvc5_stub_term_sort"

external new_solver : term_manager -> solver = "ocaml_cvc5_stub_new_solver"

external new_term_manager : unit -> term_manager
  = "ocaml_cvc5_stub_new_term_manager"

external delete_term_manager : term_manager -> unit
  = "ocaml_cvc5_stub_delete_term_manager"

external delete : solver -> unit = "ocaml_cvc5_stub_delete"

external assert_formula : solver -> term -> unit
  = "ocaml_cvc5_stub_assert_formula"
[@@noalloc]

external check_sat : solver -> result = "ocaml_cvc5_stub_check_sat"

external check_sat_assuming : solver -> term array -> result
  = "ocaml_cvc5_stub_check_sat_assuming"

external set_logic : solver -> string -> unit = "ocaml_cvc5_stub_set_logic"
[@@noalloc]

external set_option : solver -> string -> string -> unit
  = "ocaml_cvc5_stub_set_option"
[@@noalloc]

external simplify : solver -> term -> term = "ocaml_cvc5_stub_simplify"

external push : solver -> int -> unit = "ocaml_cvc5_stub_push" [@@noalloc]

external pop : solver -> int -> unit = "ocaml_cvc5_stub_pop" [@@noalloc]

external reset_assertions : solver -> unit = "ocaml_cvc5_stub_reset_assertions"
[@@noalloc]

external delete_term : term -> unit = "ocaml_cvc5_stub_delete_term"

external delete_sort : sort -> unit = "ocaml_cvc5_stub_delete_sort"

external delete_result : result -> unit = "ocaml_cvc5_stub_delete_result"

external solver_get_value : solver -> term -> term
  = "ocaml_cvc5_stub_solver_get_value"

external solver_get_values : solver -> term array -> term array
  = "ocaml_cvc5_stub_solver_get_values"

external solver_get_model_domain_elements : solver -> sort -> term array
  = "ocaml_cvc5_stub_get_model_domain_elements"

external solver_get_unsat_core : solver -> term array
  = "ocaml_cvc5_stub_get_unsat_core"

external solver_get_model : solver -> sort array -> term array -> string
  = "ocaml_cvc5_stub_get_model"

external mk_op : term_manager -> int -> int array -> op
  = "ocaml_cvc5_stub_mk_op"

external op_to_string : op -> string = "ocaml_cvc5_stub_op_to_string"

external op_equal : op -> op -> bool = "ocaml_cvc5_stub_op_equal" [@@noalloc]

external op_get_kind : op -> int = "ocaml_cvc5_stub_op_get_kind" [@@noalloc]

external op_get_num_indices : op -> int = "ocaml_cvc5_stub_op_get_num_indices"
[@@noalloc]

external op_get_index : op -> int -> term = "ocaml_cvc5_stub_op_get_index"
[@@noalloc]

external op_is_indexed : op -> bool = "ocaml_cvc5_stub_op_is_indexed"
[@@noalloc]

external op_hash : op -> (int[@untagged])
  = "ocaml_cvc5_stub_op_hash" "native_cvc5_stub_op_hash"
[@@noalloc]

external op_delete : op -> unit = "ocaml_cvc5_stub_op_delete"

external solver_declare_fun : solver -> string -> sort array -> sort -> term
  = "ocaml_cvc5_stub_declare_fun"

external mk_var_s : term_manager -> sort -> string -> term
  = "ocaml_cvc5_stub_mk_var_s"

external mk_var : term_manager -> sort -> term = "ocaml_cvc5_stub_mk_var"

external solver_define_fun :
  solver -> string -> term array -> sort -> term -> term
  = "ocaml_cvc5_stub_define_fun"

(**/**)
