#import "../../commands/commands.typ": *
== Hash Proof Systems over Lattices Revisited @PKC:BBDQ18

=== Main Contribution

The starting point of @PKC:BBDQ18 is the similar hash proof system as in the discrete logarithm setting. Namely,
$
  pk& = (vmat(k)^trans vmat(A))\
  vmat(k)^trans vmat(c) &= vmat(k)^trans (vmat(A)vmat(s)+ vmat(e)) approx (vmat(k)^trans vmat(A)) vmat(s) = pk dot vmat(s)
$
- *Correctness:* The correctness of the hash proof system is straightforward.
- *Smoothness/Universality:* The smoothness of the hash proof system requires that given $vmat(c)$ a random vector instead of a $LWE$ sample, the value distribution of $vmat(k)^trans vmat(c)$ should be uniformly random in $ZZ_q$.

In @AC:KatVai09a, the authors argued universality for ciphertexts $vmat(c)$, for which every multiple of $vmat(c)$ is far from the the lattice $Lambda$.

=== New Insights

Their observation is that the condition given by @AC:KatVai09a is not necessary for universality. Instead, they apply a new rounding algorithm, which eliminates the periodic structure of the distribution of $vmat(k)^trans vmat(c)$, and thus the value distribution is uniform in $ZZ_q$.
