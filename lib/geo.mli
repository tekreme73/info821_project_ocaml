type point = { x : float; y : float; z : float; }
type vecteur = { dx : float; dy : float; dz : float; }

val add : vecteur -> vecteur -> vecteur
val vec : point -> point -> vecteur
val barycentre2 : float * point -> float * point -> vecteur
val scalaire : vecteur -> vecteur -> float
