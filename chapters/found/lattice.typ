#import "../../commands/commands.typ": *

== Lattice

#definition("Lattice")[
  An $n$-dimensional (full-rank) lattice $lattice subset.eq RR^n$ is a discrete subgroup of $RR^m$. Equivalently, $lattice$ is a lattice if it can be written as $lattice = {vmat(B)vmat(s) mid(|) vmat(s) in ZZ^n}$ where $n <= m$, for some $vmat(B) in RR^(n times n)$, where the columns of $vmat(B)$ are linearly independent. In that case, $vmat(B)$ is called a _basis_ of $lattice$. Then, we define the _determinant_ of $lattice$ as $det(lattice) = sqrt(det(vmat(B)^trans vmat(B)))$, which does not depend on the choice of the basis $vmat(B)$.

  We define the _dual lattice_ of $lattice$ as
  $
    lattice^* = {vmat(x) in Span_(RR)(lattice) mid(|) forall vmat(y) in lattice. innerProd(vmat(x), vmat(y)) in ZZ }.
  $
]

== Gaussian Measures

#definition("Gaussian Measure")[
  For $r >0$, the $n$-dimensional Gaussian function $rho_r: RR^n to (0,1]$ is defined as
  $
    rho_r (vmat(x)) = exp(-pi (||vmat(x)||^2) / (r^2)).
  $

  We extend this definition to sets, i.e., for any set $S subset.eq RR^n$, we define the Gaussian measure of $S$ as
  $
    rho_r (S) = sum_(vmat(x) in S) rho_r (vmat(x)) in [0, +infinity).
  $
  The Gaussian measure of a lattice $lattice subset.eq RR^n$ is defined as
]

#definition("Gaussian Distribution")[
  The (spherical) continuous Gaussian distribution $Dist_r$ is the distribution with density function proportional to $rho_r$. More generally, for a matrix $vmat(B)$, we denote by $Dist_vmat(B)$ the distribution of $vmat(B)vmat(x)$ where $vmat(x)$ is sampled from $Dist_1$. When $vmat(B)$ is non-singular, its probability density function is proportional to
  $
    exp(-pi vmat(x)^trans (vmat(B)vmat(B)^trans)^(-1) vmat(x)).
  $
]

#theorem("Sum of Gaussian Distributions")[
  Let $vmat(B)_1, vmat(B)_2 in RR^(n times n)$ be a non-singular matrix, and let $vmat(x), vmat(y) in RR^n$ be sampled from $Dist_(vmat(B)_1), Dist_(vmat(B)_2)$. Then, the distribution of $vmat(x) + vmat(y)$ is given by $Dist_{vmat(C)}$ with $vmat(C) = sqrt(vmat(B)_1vmat(B)_1^trans + vmat(B)_2vmat(B)_2^trans)$.
]
#proof[
  If we take the characteristic function of the distribution $Dist_(vmat(B)_1), Dist_(vmat(B)_2)$. Then, we take the product of the characteristic functions, to see the proof
]

== Useful Lemmas

The following lemma reveals the relation between the smoothing parameter of the lattice and the shortest vector of its dual lattice.
#lemma("Smoothing Parameter and Shortest Vector of Dual Lattice")[
  Let $lattice subset.eq RR^n$ be a lattice, and let $lambda_1(lattice^*)$ be the length of the shortest vector in the dual lattice $lattice^*$. We have
  $
    eta_(2^(-n))(lattice) <= sqrt(n) / (lambda_1(lattice^*)).
  $
]


== Reductions

We will show in this section several reductions between lattice problems.

