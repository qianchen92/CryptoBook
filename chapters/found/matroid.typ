#import "../../commands/commands.typ": *



== Matroid

#definition("Matroid")[
  A _matroid_ is a pair $Var(M) = (Var(E), Var(I))$ where $Var(E)$ is a finite set, and $Var(I) subset.eq Set(P)(Var(E))$ is a family of subsets of $Var(E)$, called the _independent sets_, satisfying the following properties:
  1. The empty set is independent, i.e.,
  $
    emptyset in Var(I).
  $
  2. Every subset of an independent set is independent, i.e.,
  $
    forall Var(A),Var(B): Var(A) in Var(I) and Var(B) subset.eq Var(A) ==> Var(B) in Var(I).
  $
  this property is called _hereditary property_.
  3. If $Var(A)$ and $Var(B)$ are two independent sets and $|Var(A)| > |Var(B)|$, then there exists an element $x in Var(A) without Var(B)$ such that $Var(B) union {x} in Var(I)$, i.e.,
  $
    forall Var(A),Var(B): Var(A),Var(B) in Var(I) and |Var(A)| > |Var(B)| ==> exists x in Var(A) without Var(B): Var(B) union {x} in Var(I),
  $
  this property is called _exchange property_.]
#definition("Basis")[
  A _basis_ of  a matroid is a maximal independent set. All bases of a matroid have the same size, called the _rank_ of the matroid.]
#remark[
  The definition of the basis of a matroid is dependent to the definition of the independent set.
]
#definition("Circuit")[
  A _circuit_ of a matroid is a minimal dependent set. A _loop_ is a circuit of size one.]
#definition("flat")[
  A _flat_ of a matroid is a subset $Var(F) subset.eq Var(E)$ such that for every element $x in Var(E) without Var(F)$, the rank of $Var(F) union {x}$ is greater than the rank of $Var(F)$.]
#definition("Closure")[
  The _closure_ of a set $A subset.eq E$ is the smallest flat containing $A$.]
#definition("Representable Matroid")[
  A matroid is _representable_ over a field $Field$ if there exists a matrix over $Field$ whose columns are indexed by the elements of $Var(E)$, such that a subset of columns is independent if and only if it corresponds to an independent set in the matroid.
]



=== Some Direct Theorems

#theorem[
  In a matroid, all bases have the same size, called the rank of the matroid.]
#proof[
  Let $Var(B_1)$ and $Var(B_2)$ be two bases of a matroid $Var(M) = (Var(E), Var(I))$. We assume by contradiction that $|Var(B_1)| > |Var(B_2)|$]. By the exchange property, there exists an element $x in Var(B_1) without Var(B_2)$ such that $Var(B_2) union {x} in Var(I)$, i.e., $Var(B_2) union {x}$ is independent. This contradicts the fact that $Var(B_2)$ is a basis, i.e., a maximal independent set. Therefore, all bases have the same size.
#remark[
  The above theorem shows that the rank of a matroid is well-defined.
]

#theorem("CNF-secret sharing")[
  Let $t in NN$ be an integer and $n > 3t in NN$. Let $Var(E) = {1, dots, n}$ be a ground set, and $Var(I) = {Var(A) subset.eq Var(E) : |Var(A)| < n - t}$. Then, $Var(M) = (Var(E), Var(I))$ is a matroid of rank $n - t$.
]
#proof[
  We need to show that $Var(I)$ satisfies the three properties of a matroid.
  1. The empty set is independent, i.e., $emptyset in Var(I)$. This is true since $|emptyset| = 0 < n - t$.
  2. Every subset of an independent set is independent, i.e., $forall Var(A),Var(B): Var(A) in Var(I) and Var(B) subset.eq Var(A) ==> Var(B) in Var(I)$. Let $Var(A) in Var(I)$ and $Var(B) subset.eq Var(A)$. Then, $|Var(B)| <= |Var(A)| < n - t$, hence $Var(B) in Var(I)$.
  3. If $Var(A)$ and $Var(B)$ are two independent sets and $|Var(A)| > |Var(B)|$, then there exists an element $x in Var(A) without Var(B)$ such that $Var(B) union {x} in Var(I)$, i.e., $forall Var(A),Var(B): Var(A),Var(B) in Var(I) and |Var(A)| > |Var(B)| ==> exists x in Var(A) without Var(B): Var(B) union {x} in Var(I)$. Let $Var(A),Var(B) in Var(I)$ and $|Var(A)| > |Var(B)|$. Since $|Var(A)| < n - t$ and $|Var(B)| < n - t$, we have $|Var(A)| <= n - t - 1$ and $|Var(B)| <= n - t - 1$. Therefore, there exists an element $x in Var(A) without Var(B)$ such that $|Var(B) union {x}| <= n - t - 1 + 1 = n - t$, hence $Var(B) union {x} in Var(I)$.

  Therefore, $Var(M) = (Var(E), Var(I))$ is a matroid.
  The rank of the matroid is $n - t$ since all bases have size $n - t$.
]

