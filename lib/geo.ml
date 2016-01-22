type point   = { x  : float; y  : float;  z : float; }
type vecteur = { dx : float; dy : float; dz : float; }

let add v1 v2 =
  { dx = v1.dx +. v2.dx; dy = v1.dy +. v2.dy; dz = v1.dz +. v2.dz }

let vec p1 p2 =
  { dx = p2.x -. p1.x; dy = p2.y -. p1.y; dz = p2.z -. p1.z }

let barycentre2 (a, p1) (b, p2) = assert false

let scalaire v1 v2 = assert false
