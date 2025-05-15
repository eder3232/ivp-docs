// —— styles.typ ——
// Aquí sólo van las reglas de estilo, sin contenido

// Centrar y aumentar tamaño + peso a los H1
#show heading.where(level: 1): it => [
  #set align(center)                            // centrar
  #set text(size: 24pt, weight: "bold")         // tamaño y negrita
  #it.body                                       // el propio texto del título
]

// (Puedes añadir más reglas para h2, tables, etc.)
