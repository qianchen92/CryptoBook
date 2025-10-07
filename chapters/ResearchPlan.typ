#import "../commands/commands.typ": *

= Research Plans
== Lattice-based Tightly-Secure Multi-Signatures (Half-way)

=== Maybe useful references
+ Lattice-based Signatures with Tight Adaptive Corruptions and More
  - Paper: @PKC:PanWag22
  - Contributions: They construct the first lattice-based signature scheme with tight security against adaptive corruption.
    The construction is based on the standard $LWE$ assumption. The key caveat is that in bothe the $RLWE$ and $MLWE$ settings,
    the scheme is not tightly secure against adaptive corruption.
+ New Techniques for Preimage Sampling: Improved NIZKs and More from LWE
  - Paper: @EC:WatWeeWu25
  - Contributions:

+ DualMS: Efficient Lattice-Based Two-Round Multi-Signature with Trapdoor-Free Simulation
  - Paper: @C:Chen23

+ DOTT lattice-based Multi-Signature
  - Paper: @PKC:DOTT21 and @JC:DOTT22

+ MuSig-L
  - Paper: @C:BosTakTib22

=== General Ideas

- The principle idea is to start with the hash-and-sign paradigm, and then try to aggregate the signatures.

- #strike[The main technique is the relinearization technique for the quadratic terms in the signature construction.]

- Replace the dual-mode trapdoor commitment in @EC:PanWag23, @EC:PanWag24 with a parallel-OR proof. This is because the parallel-OR is more suitable for the case where the first-round message is not fixed. #strong[#text(red)[Pilaf paper: submitted to Eurocrypt 2026.]]

=== Contribution and Objectives

+ First single-round lattice-based multi-signature scheme from $MLWE$ assumption.
  - Main selling point: efficiency
  - Try to compare with other schemes.
  - Possible collaborator:
    - Hao Chen (For implementation)
+ First tightly-secure lattice-based multi-signature scheme.
  - Main selling point: tight security against adaptive corruption.
  - From the $LWE$ assumption, we can prove the tight security against adaptive corruption in the multi-user multi-challenge setting.
  - Possible collaborator:
    - Quan Yuan (For QROM security)
+ Most efficient lattice-based threshold signature scheme.
  - Main selling point: efficient threshold signature scheme.
  - Need to use other threshold signature techniques.
  - Possible collaborator:
    - Puwen Wei or Zengpeng Li (For threshold signature techniques)
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
+ Middle-Product Learning with Errors



#pagebreak()
== Broadcast Encryption with Keyword Search (Ongoing)

=== References
+ Forward-secure and searchable broadcast encryption with short ciphertexts and private keys (Asiacrypt 2006)
  - Authors: @AC:AttFurIma06
  - Contribution: The starting paper of this line of work.
+ Omnes pro uno: Practical Multi-Writer Encrypted Database (USENIX Security 2023)
  - Authors: @USENIX:WanCho22
+ Generic Construction of Broadcast Authenticated Encryption with Keyword Search (IET Security 2023)
  - References: @EPRINT:Emura23a
+ REKS: Role-Based Encrypted Keyword Search With Enhanced Access Control for Outsourced Cloud Data (TDSC 2024)
  - Authors: @TDSC:MLJWLCD24
+ Outsider-Anonymous Broadcast Encryption with Keyword Search: Generic Construction, CCA Security, and with Sublinear Ciphertexts (IEICE 2024)
+ Broadcast Searchable Keyword Encryption (International Conference on Computational Science and Engineering 2014)
+ Statistically Consistent Broadcast Authenticated Encryption with Keyword Search (Information Security and Privacy 2023)
+ Efficient identity-based broadcast encryption with keyword search against insider attacks for database systems (TCS 2019)


#pagebreak()
== Efficient Dual-Mode Commitments and Lattice-based Zero-Knowledge Proofs (Ongoing)


=== References
- @AC:ZCYW23: Generic framework for constructing $Sigma$-protocol from non-interactive VSS protocols.
- @PKC:PanWag22: Lattice-based signature scheme with tight security against adaptive corruption.
  - In this paper, their main contribution is to give a construction of a dual-mode trapdoor commitment.


#pagebreak()
== Lattice-based efficient PRF (Ongoing)
- @EC:BanPeiRos12: Lattice-based PRF construction based on the hardness of the Learning with Errors problem.

== Basic constructions

- OK...This result is based on the learning with rounding problem.

=== Synthesizer

- De-randomization of $LWE$ instances.
  - $LWR$ problem?


#pagebreak()

== Lattice-based vector commitment schemes (Ongoing)

=== Intuitions

The $Sigma$-protocol given by @AC:ZCYW23 is a very good candidate for constructing a vector commitment scheme.


#pagebreak()

== PSI protocols (Ongoing)

=== References
- @EC:vBaPu24: A PSI protocol based on the hardness of DDH problem.


#pagebreak()

== Tightly-secure Multi-User Signatures in the quantum random oracle model (Ongoing)

=== References
- @PKC:PanWag22: Lattice-based signature scheme with tight security against adaptive corruption.

=== Open problem:

Give a proof in the quantum random oracle model.

#pagebreak()

== Matroid Theory (Ongoing)

#pagebreak()

== Formal Verfication of Cryptographic Protocols (Ongoing)

=== References
- @EPRINT:StePaiDil25: Automated Verification of Consistency in Zero-Knowledge Proof Circuits
