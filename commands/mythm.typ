#import "@preview/ctheorems:1.1.3": *

#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let lemma = thmbox("lemma", "Lemma", fill: rgb("#eeffee"))
#let corollary = thmplain("corollary", "Corollary", base: "theorem", titlefmt: strong)
#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))

#let example = thmplain("example", "Example").with(numbering: none)
#let proof = thmproof("proof", "Proof")

// Remark with attention icon
#let remark(body) = {
  block(
    fill: rgb("#fff4e6"),
    stroke: rgb("#ff9800") + 1pt,
    radius: 3pt,
    inset: 1em,
    breakable: true,
    [
      #grid(
        columns: (auto, 1fr),
        column-gutter: .8em,
        align: (horizon),
        [
          #image("../assets/attention.png", width: 3em, height: 3em)
        ],
        [
          #thmbox("remark", "Remark")(body)
        ],
      )
    ],
  )
}
