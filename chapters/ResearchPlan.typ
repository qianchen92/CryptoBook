#import "../commands/commands.typ": *

= Research Plans
== Lattice-based Tightly-Secure Multi-Signatures (Ongoing)

=== Maybe useful refereneces
- Lattice-based Signatures with Tight Adaptive Corruptions and More
  - Paper: @PKC:PanWag22
  - Contributions: They construct the first lattice-based signature scheme with tight security against adaptive corruption.
    The construction is based on the standard $LWE$ assumption. The key caveat is that in bothe the $RLWE$ and $MLWE$ settings,
    the scheme is not tightly secure against adaptive corruption.
- New Techniques for Preimage Sampling: Improved NIZKs and More from LWE
  - Paper: @EC:WatWeeWu25
  - Contributions:

- DualMS: Efficient Lattice-Based Two-Round Multi-Signature with Trapdoor-Free Simulation
  - Paper: @C:Chen23

- DOTT lattice-based Multi-Signature
  - Paper: @PKC:DOTT21 and @JC:DOTT22

- MuSig-L
  - Paper: @C:BosTakTib22

#pagebreak()
== Hardness of Learning with Errors with different rounding functions (Ongoing)

=== References

- Classical Hardness of Learning with Errors
  - Paper: @STOC:BLPRS13

#pagebreak()
== Hardness of Module Learning with Errors with sample-preserving worst case to average case reduction. (Ongoing)

=== References

+ Worst-Case to Average-Case Reductions Based on Gaussian Measures
  - Authors: @FOCS:MicReg04
  - Contribution: First worst-case to average-case reduction for the learning with errors problem. This reduction is *sample-preserving*.
+ Worst-Case to Average-Case Reductions for Module Lattices
  - Authors: @DCC:LanSte15
  - Contribution: First worst-case to average-case reduction for the module learning with errors problem. This reduction is *not sample-preserving*.
+ Random Self-Reducibility of the Ideal-$SVP$ problem
  - References: @C:BDPW20
  - Contribution: They use the random walk technique over the Arakelov group.


#pagebreak()
== Extendable Inner-Product Functional Encryption and its Applications to Searchable Encryption (Ongoing)

#pagebreak()
== Efficient Dual-Mode Commitments and Lattice-based Zero-Knowledge Proofs (Ongoing)


=== References
- @AC:ZCYW23: Generic framework for constructing $Sigma$-protocol from non-interactive VSS protocols.
