#import "../commands/commands.typ": *

= Hard Problems
== Lattice-based Hard Problems

=== Shifted Multi-Preimage Sampling

- Origin: @EC:WatWeeWu25

#definition[
  Let $lambda$ be a security parameter and $n = n(lambda)$, $m = m(lambda)$ and $q = q(lambda)$ be lattice parameters.
  Suppose $m >= n ceil(log q)$. Then for all $ell in NN$, and $t = m ceil(log ell)$, there exists an explicit
  polynomial-time algorithm $StructTrapGen$ such that
  - $StructTrapGen(vmat(B), (vmat(u)_1, dots, vmat(u)_ell)) to TrapT$: Takes a matrix $vmat(B) in ZZ_q^(n times t)$ and
    distinct vectors $vmat(u)_1 dots vmat(u)_ell in {0,1}^(ceil(log ell))$ as input, and outputs a a gadget trapdoor $TrapT in ZZ_q^((ell t +m) times ell m)$ where $||TrapT|| = 1$ for
    the matrix
    $ vmat(D)'_ell = bmat(vmat(B)- vmat(u)_1^trans, , , vmat(G);, dots.down, , dots.v;, , vmat(B)- vmat(u)_ell^trans, vmat(G)) $
]

#proof[
  The proof consists of an explicit construction of the algorithm $StructTrapGen$ and a proof of correctness.

  The algorithm $StructTrapGen$ works as follows:
  #algo(title: "StructTrapGen", parameters: ($vmat(B)$, $vmat(u)_1, dots, vmat(u)_ell$))[
    for $i$ in [$ell$] do #i\
    $vmat(v)$ = $vmat(u)_i$ *mod* $q$ #d\
    if
  ]
]