

// (Puedes añadir más reglas para h2, tables, etc.)
#let style(doc) = {
  show heading.where(level: 1): it => [
    #set align(center) // centrar
    #set text(size: 20pt, weight: "bold") // tamaño y negrita
    #it.body // el propio texto del título
  ]

  doc
}
