#import "../commands/commands.typ": *

= Useful Primitives

== Homomorphic Encodings

#definition("Homomorphic Encoding " + cite(label("C:DHMWW24")))[
  Let $lambda$ be a security parameter and $n = n (lambda)$, $q = q(lambda)$ be lattice parameters. Take any $m >=n ceil(log q)$ and
  let $k = k(lambda)$ be an input length. Then there exist a pair of $ppt$ algorithms $HomEnc = (EvalF, EvalFX)$ with the
  following syntax:
  - $EvalF(vmat(A), delta_(vmat(u))) to vmat(A)_(vmat(u))$: Takes a matrix $vmat(A) in ZZ_q^(n times k m)$ and the indicator function $delta_(vmat(u))$ (where $vmat(u) in {0,1}^k$), and outputs a matrix $vmat(A)_(vmat(u)) in ZZ_q^(n times m)$.
  - $EvalFX(vmat(A), delta_(vmat(u)), vmat(x)) to vmat(H)_(vmat(A), vmat(u), vmat(x))$: Takes a matrix $vmat(A) in ZZ_q^(n times k m)$, an indicator function $delta_(vmat(u))$ (where $vmat(u) in {0,1}^k$), and $vmat(x) in {0,1}^k$ as input, and outputs a matrix $vmat(H)_(vmat(A), vmat(u), vmat(x)) in ZZ_q^(k m times m)$. Moreover, for all security parameters $lambda in NN$, matrices $vmat(A) in ZZ_q^(n times k m )$, all indicator functions $delta_(vmat(u))$, and all inputs $vmat(x) in {0,1}^k$, the matrices $vmat(A)_(vmat(u)) arrow.l EvalF(vmat(A), delta_(vmat(u)))$ and $vmat(H)_(vmat(A), vmat(u), vmat(x)) arrow.l EvalFX(vmat(A), delta_(vmat(u)), vmat(x))$ satisfy the following properties:
  - $vmat(H)_(vmat(A), vmat(u), vmat(x)) in {-1,0,1}^(k m times m)$,
  - $(vmat(A) - vmat(x)^trans times.circle vmat(G)) dot vmat(H)_(vmat(A), vmat(u), vmat(x)) = vmat(A)_(vmat(u)) - delta_(vmat(u))(vmat(x)) dot vmat(G)$.
  The running time of $EvalF$ and $EvalFX$ is bounded by $2^k dot poly(n, m, k)$
]<def:HomEnc>

*Remarks:* The homomorphic encoding $HomEnc$ is actually used in the construction of $ABE$ schemes.
== Zero-Knowledge Proofs
=== Hidden Bits Generator

#definition("Hidden Bits Generator " + cite(label("STOC:Waters24")))[
  A hidden bits generator $protHBG$ consists of three $ppt$ algorithms $protHBG = (Gen, GenBits, Verif)$ with the following syntax:
  - $Gen(secparam, k) to crs$: Takes a security parameter $lambda$ and a length $k$ as input, and outputs a common reference string $crs$.
  - $GenBits(crs) to (com, vmat(r), (pi_1, dots, pi_k))$: Takes a common reference string $crs$ as input, and outputs a commitment $com$, a vector $vmat(r) in {0,1}^k$, and a vector of $k$ bit-commitments $(pi_1, dots, pi_k)$.
  - $Verif(crs, com, i, beta, pi) to {0,1}$: Takes a common reference string $crs$, a commitment $com$, an index $i in [k]$, a bit $beta in {0,1}$ and a proof $pi$ as input, and outputs a bit $b in {0,1}$.
  We require that the following properties hold:
  - *Correctness:* For all $lambda,k in NN$ and all indices $i in [k]$ we have
  $
    Pr[Verif(crs, com, i, vmat(r)_i, pi_i) = 1 | ()]
  $
]
