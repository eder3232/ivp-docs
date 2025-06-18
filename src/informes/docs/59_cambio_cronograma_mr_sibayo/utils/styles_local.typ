#import "@preview/numbly:0.1.0": numbly

#let local_style(doc) = {
  set text(lang: "es")
  set enum(full: true, numbering: numbly("{1:1.1}."))
  set par(justify: true)
  show heading.where(level: 1): it => [
    #set align(center) // centrar
    #set text(size: 20pt, weight: "bold") // tamaño y negrita
    #it.body // el propio texto del título
  ]
  set heading(numbering: (_, ..nums) => numbering("I.1 )", ..nums))
  set page(
    margin: (
      top: 3.5cm,
      bottom: 2.5cm,
      left: 3.5cm,
      right: 2.5cm,
    ),
    numbering: "1 de 1",
    header: [
      #grid(
        columns: (1fr, 3fr, 1fr),
        align: (horizon, horizon + center, horizon),
        [#figure(image("../../../../assets/ivp-jo.png", width: 60pt), numbering: none)
        ],
        [#text(
            size: 14pt,
          )[Instituto Vial Provincial Caylloma \ #text(size: 9pt)[Año de la Recuperación y Consolidación de la Economía Peruana]]],
        [#figure(image("../../../../assets/mpcaylloma.jpeg", width: 60pt), numbering: none)],
      )
    ],
    header-ascent: 0.5cm,
  )
  doc
}


// #set heading(
//   numbering: (..it) => if it.pos().len() <= 1 { none } else {
//     numbering("I.1.", ..it.pos().slice(1))
//   },
// )
// #set enum(full:true, numbering: numbly("{1:1.1}.", "{2:1.}", "{3:a})","({4})" ))
// #show heading.where(level: 1): set heading(numbering: none)
