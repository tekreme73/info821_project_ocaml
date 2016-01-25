type point   = { x  : float; y  : float; z  : float; }
type vecteur = { dx : float; dy : float; dz : float; }

let add v1 v2 = {
  dx = v1.dx +. v2.dx;
  dy = v1.dy +. v2.dy;
  dz = v1.dz +. v2.dz
}
let vec p1 p2 = {
  dx = p2.x -. p1.x;
  dy = p2.y -. p1.y;
  dz = p2.z -. p1.z
}

let scalaire v1 v2 =
  v1.dx *. v2.dx +. v1.dy *. v2.dy +. v1.dz *. v2.dz
let vectoriel v1 v2 = {
  dx = v1.dy *. v2.dz -. v1.dz *. v2.dy;
  dy = v1.dx *. v2.dz -. v1.dz *. v2.dx;
  dz = v1.dx *. v2.dy -. v1.dy *. v2.dx
}

let determinant2 v1 v2 =
  v1.dx *. v2.dy -. v1.dy *. v2.dx
let determinant3 v1 v2 v3 =
  (v1.dx *. v2.dy -. v1.dy *. v2.dx) *. v3.dz -.
  (v1.dx *. v2.dz -. v1.dz *. v2.dx) *. v3.dy +.
  (v1.dy *. v2.dz -. v1.dz *. v2.dy) *. v3.dx

let barycentre2 (a, p1) (b, p2) = {
  x = (a *. p1.x +. b *. p2.x) /. (a +. b);
  y = (a *. p1.y +. b *. p2.y) /. (a +. b);
  z = (a *. p1.z +. b *. p2.z) /. (a +. b)
}
