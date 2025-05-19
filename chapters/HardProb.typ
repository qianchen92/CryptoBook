#import "../commands/commands.typ": *

= Hard Problems
== Lattice-based Hard Problems

=== Shifted Multi-Preimage Sampling

- Origin: @EC:WatWeeWu25

#definition[
  Let $lambda$ be a security parameter and $n = n(lambda)$, $m = m(lambda)$ and $q = q(lambda)$ be lattice parameters. Suppose $m >= n ceil(log q)$. Then for all $ell in NN$, and $t = m ceil(log ell)$, there exists an explicit polynomial-time algorithm $StructTrapGen$ such that
  - $StructTrapGen(vmat(B), (vmat(u)_1, dots, vmat(u)_ell)) to TrapT$: Takes a matrix $vmat(B) in ZZ_q^(n times t)$ and distinct vectors $vmat(u)_1 dots vmat(u)_ell in {0,1}^(ceil(log ell))$ as input, and outputs a a gadget trapdoor $TrapT in ZZ_q^((ell t +m) times ell m)$ where $||TrapT|| = 1$ for the matrix
    $
      vmat(D)'_ell = bmat(vmat(B)- vmat(u)_1^trans times.circle vmat(G), , , vmat(G); , dots.down, , dots.v; , , vmat(B)- vmat(u)_ell^trans, vmat(G))
    $
]

#proof[
  The proof consists of an explicit construction of the algorithm $StructTrapGen$ and a proof of correctness.

  The algorithm $StructTrapGen$ works as follows:

  #algo(
    title: "StructTrapGen",
    parameters: ($vmat(B)$, $vmat(u)_1, dots, vmat(u)_ell$),
  )[
    for $i,j$ in [$ell$] do #i\
    $vmat(H)_(vmat(B), vmat(u)_i, vmat(u)_j) getsr EvalFX(vmat(B), delta_(vmat(u)_i), vmat(u)_j)$\
    $vmat(B)_(vmat(u)_i) getsr EvalF(vmat(B), delta_(vmat(u)_i))$#d\
    Return $vmat(T) = bmat(
      -vmat(H)_(vmat(B), vmat(u)_1, vmat(u)_1), dots.h, -vmat(H)_(vmat(B), vmat(u)_ell, vmat(u)_1); dots.v, dots.down, dots.v; -vmat(H)_(vmat(B), vmat(u)_1, vmat(u)_ell), dots.h, -vmat(H)_(vmat(B), vmat(u)_ell, vmat(u)_ell); vmat(G)^(-1)(vmat(B)_(vmat(u)_1)), dots.h, vmat(G)^(-1)(vmat(B)_(vmat(u)_ell))
    ) in ZZ_q^((ell t +m) times ell m)$
  ]

  We need to show that the output of $StructTrapGen$ is a gadget trapdoor for the matrix
  $vmat(D)'_ell = bmat(
    vmat(B)- vmat(u)_1^trans times.circle vmat(G), , , vmat(G); , dots.down, , dots.v; , , vmat(B)- vmat(u)_ell^trans times.circle vmat(G), vmat(G)
  )$. Namely, we need to show that
  $
    vmat(D_ell)'vmat(T) &= bmat(
      vmat(B)- vmat(u)_1^trans times.circle vmat(G), , , vmat(G); , dots.down, , dots.v; , , vmat(B)- vmat(u)_ell^trans times.circle vmat(G), vmat(G)
    ) bmat(
      -vmat(H)_(vmat(B), vmat(u)_1, vmat(u)_1), dots.h, -vmat(H)_(vmat(B), vmat(u)_ell, vmat(u)_1); dots.v, dots.down, dots.v; -vmat(H)_(vmat(B), vmat(u)_1, vmat(u)_ell), dots.h, -vmat(H)_(vmat(B), vmat(u)_ell, vmat(u)_ell); vmat(G)^(-1)(vmat(B)_(vmat(u)_1)), dots.h, vmat(G)^(-1)(vmat(B)_(vmat(u)_ell))
    ) \ &= bmat(vmat(G), , ; , dots.down, ; , , vmat(G))
  $

  Using the definition of homomorphic encoding in @def:HomEnc, the correctness of the algorithm $StructTrapGen$ is straightforward.
]
