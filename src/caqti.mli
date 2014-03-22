(* Copyright (C) 2014  Petter Urkedal <paurkedal@gmail.com>
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or (at your
 * option) any later version, with the OCaml static compilation exception.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library.  If not, see <http://www.gnu.org/licenses/>.
 *)

(** Exceptions and connect functor. *)

open Caqti_query
open Caqti_sigs

exception Connect_failed of Uri.t * string
exception Prepare_failed of Uri.t * prepared_query * string
exception Execute_failed of Uri.t * query * string
exception Miscommunication of Uri.t * query * string

val register_scheme : string -> (module CONNECT_FUNCTOR) -> unit

include CONNECT_FUNCTOR
