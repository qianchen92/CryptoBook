#import "../../commands/commands.typ": *

== Lattice

#definition("Lattice")[
  An $n$-dimensional (full-rank) lattice $lattice subset.eq RR^n$ is a discrete subgroup of $RR^m$. Equivalently, $lattice$ is a lattice if it can be written as $lattice = {vmat(B)vmat(s) mid(|) vmat(s) in ZZ^n}$ where $n <= m$, for some $vmat(B) in RR^(n times n)$, where the columns of $vmat(B)$ are linearly independent. In that case, $vmat(B)$ is called a _basis_ of $lattice$. Then, we define the _determinant_ of $lattice$ as $det(lattice) = sqrt(det(vmat(B)^trans vmat(B)))$, which does not depend on the choice of the basis $vmat(B)$.

  We define the _dual lattice_ of $lattice$ as
  $
    lattice^* = {vmat(x) in Span_(RR)(lattice) mid(|) forall vmat(y) in lattice. innerProd(vmat(x), vmat(y)) in ZZ }.
  $
]

#definition($SVP$)[
  The _minimum distance_ of a lattice $lattice$ is defined as
  $
    lambda_1(lattice) = min_(vmat(x) in lattice backslash {0}) ||vmat(x)||.
  $
  The _shortest vector problem_ (SVP) is to find a non-zero vector $vmat(x) in lattice$ such that $||vmat(x)|| = lambda_1(lattice)$.

]

#definition($GSVP_gamma$)[
  For an approximate ratio $gamma = gamma(n) >=1$, the _gap shortest vector problem_ ( $GSVP_gamma$ ) is to find a non-zero vector $vmat(x) in lattice$ such that $||vmat(x)|| <= gamma dot lambda_1(lattice)$.
]



