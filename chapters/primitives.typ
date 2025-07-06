#import "../commands/commands.typ": *

= Useful Primitives

== Homomorphic Encodings

#definition("Homomorphic Encoding " + cite(label("C:DHMWW24")))[
  Let $lambda$ be a security parameter and $n = n (lambda)$, $q = q(lambda)$ be lattice parameters. Take any $m >=n ceil(log q)$ and
  let $k = k(lambda)$ be an input length. Then there exist a pair of $ppt$ algorithms $HomEnc = (EvalF, EvalFX)$ with the
  following syntax:
  - $EvalF(vmat(A), delta_(vmat(u))) to vmat(A)_(vmat(u))$: Takes a matrix $vmat(A) in ZZ_q^(n times k m)$ and the indicator function $delta_(vmat(u))$ (where $vmat(u) in {0,1}^k$), and outputs a matrix $vmat(A)_(vmat(u)) in ZZ_q^(n times m)$.
  - $EvalFX(vmat(A), delta_(vmat(u)), vmat(x)) to vmat(H)_(vmat(A), vmat(u), vmat(x))$: Takes a matrix $vmat(A) in ZZ_q^(n times k m)$, an indicator function $delta_(vmat(u))$ (where $vmat(u) in {0,1}^k$), and $vmat(x) in {0,1}^k$ as input, and outputs a matrix $vmat(H)_(vmat(A), vmat(u), vmat(x)) in ZZ_q^(k m times m)$.

  Moreover, for all security parameters $lambda in NN$, matrices $vmat(A) in ZZ_q^(n times k m )$, all indicator functions $delta_(vmat(u))$, and all inputs $vmat(x) in {0,1}^k$, the matrices $vmat(A)_(vmat(u)) arrow.l EvalF(vmat(A), delta_(vmat(u)))$ and $vmat(H)_(vmat(A), vmat(u), vmat(x)) arrow.l EvalFX(vmat(A), delta_(vmat(u)), vmat(x))$ satisfy the following properties:
  - $vmat(H)_(vmat(A), vmat(u), vmat(x)) in {-1,0,1}^(k m times m)$,
  - $(vmat(A) - vmat(x)^trans times.circle vmat(G)) dot vmat(H)_(vmat(A), vmat(u), vmat(x)) = vmat(A)_(vmat(u)) - delta_(vmat(u))(vmat(x)) dot vmat(G)$.
  The running time of $EvalF$ and $EvalFX$ is bounded by $2^k dot poly(n, m, k)$
]<def:HomEnc>

*Remarks:* The homomorphic encoding $HomEnc$ is actually used in the construction of $ABE$ schemes.

== Vector Commitment Schemes

== Zero-Knowledge Proofs

=== Hash Proof System

#definition("Hash Proof System " + cite(label("C:CraSho98")))[
  A hash proof system $hps$ consists of three $ppt$ algorithms $hps = (Setup, Prove, Verif)$ with the following syntax:
  - $Setup(secparam) to hk$: Takes a security parameter $lambda$ and a language $lang$ as input, and outputs a hash key $hk$.
  - $KGen(hk, lang, stmt) to pk$: Takes a hash key $hk$ and a language $lang$ as input, and outputs a projection key $pk$.
  - $Hash(hk, stmt) to hash$: Takes a hash key $hk$, and a statement $stmt$ as input, and outputs a hash $hash$.
  - $ProjHash(pk, stmt, wit) to hash$: Takes a projection key $pk$, a statement $stmt$ and a witness $wit$ as input, and outputs a hash $hash$.

  We require the following properties:
  - *Statement Independent:* A word independent hash function $Hash$ is a $hps$ with statement independent $KGen(hk, lang) to pk$ algorithm#footnote[The original Crammer-Shoup is actually statement independent.].
  - *Approximate Correctness* For all security parameter $secpar$, and hash space $hSpace = {0,1}^hSpaceSize$ we have
  $
    Pr[HW(Hash(hk, stmt, wit), ProjHash(pk, stmt)) > epsilon dot hSpaceSize] = negl.
  $
  - *Smoothness (Universality):* For all security parameter $secpar$, for all statement outside the language $stmt in stmtSpace backslash lang$, the following distributions are statistically close:
  $
    {(stmt, pk, hash) mid(|) #grid(
        columns: 1,
        align: left,
        gutter: 5pt,
        $hk getsr Setup(secparam)$,
        $pk getsr KGen(hk, lang, stmt)$,
        $hash getsr Hash(hk, stmt)$,
      )},\
    {(stmt, pk, hash) mid(|) #grid(
        columns: 1,
        align: left,
        gutter: 5pt,
        $hk getsr Setup(secparam)$,
        $pk getsr KGen(hk, lang, stmt)$,
        $hash getsr Unif({0,1})$,
      )}.
  $
]

=== Hidden Bits Generator

#definition("Hidden Bits Generator " + cite(label("STOC:Waters24")))[
  A hidden bits generator $protHBG$ consists of three $ppt$ algorithms $protHBG = (Gen, GenBits, Verif)$ with the following syntax:
  - $Gen(secparam, k) to crs$: Takes a security parameter $lambda$ and a length $k$ as input, and outputs a common reference string $crs$.
  - $GenBits(crs) to (com, vmat(r), (pi_1, dots, pi_k))$: Takes a common reference string $crs$ as input, and outputs a commitment $com$, a vector $vmat(r) in {0,1}^k$, and a vector of $k$ bit-commitments $(pi_1, dots, pi_k)$.
  - $Verif(crs, com, i, beta, pi) to {0,1}$: Takes a common reference string $crs$, a commitment $com$, an index $i in [k]$, a bit $beta in {0,1}$ and a proof $pi$ as input, and outputs a bit $b in {0,1}$.
  We require that the following properties hold:
  - *Correctness:* For all $lambda,k in NN$ and all indices $i in [k]$ we have
  $
    Pr[Verif(crs, com, i, vmat(r)_i, pi_i) = 1 mid(|) #grid(
        columns: 1,
        align: center,
        gutter: 5pt,
        $crs getsr Setup;$,
        $(com, vmat(r), (pi_1, dots, pi_k)) getsr GenBits(crs)$,
      )] = 1.
  $

]

