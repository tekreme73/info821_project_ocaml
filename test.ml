open Printf
open Geo

let v1 = {dx=1.0; dy=2.0; dz=3.0}
let v2 = {dx=4.0; dy=5.0; dz=6.0}
let v3 = {dx=7.0; dy=8.0; dz=9.0}

let p1 = {x=0.0; y=0.0; z=10.0}
let p2 = {x=5.0; y=2.0; z=3.0}

let print_point ch p =
  fprintf ch "(%.3f,%.3f,%.3f)" p.x p.y p.z
let print_vec ch v =
  fprintf ch "(%.3f,%.3f,%.3f)" v.dx v.dy v.dz

let _ = printf "scalaire %a . %a = %.2f\n" print_vec v1 print_vec v2 (scalaire v1 v2)
let _ = printf "det( %a, %a ) = %.2f\n" print_vec v1 print_vec v2 (determinant2 v1 v2)
let _ = printf "det( %a, %a, %a ) = %.2f\n" print_vec v1 print_vec v2 print_vec v3 (determinant3 v1 v2 v3)
let _ = printf "vectoriel %a ^ %a = %a\n" print_vec v1 print_vec v2 print_vec (vectoriel v1 v2)
