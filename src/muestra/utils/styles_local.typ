#let local_style(doc) = {
  set document(author: "Instituto Vial Provincial de Caylloma", title: "Expediente Técnico")
  
  set page(
    paper: "a4",
    margin: (left: 2.5cm, right: 2.5cm, top: 2.5cm, bottom: 2.5cm),
    numbering: "1",
  )
  
  set text(font: "Times New Roman", size: 11pt)
  
  set heading(numbering: "1.1.")
  
  show heading: it => {
    set text(weight: "bold")
    block(above: 1.4em, below: 0.7em)[
      #it
    ]
  }
  
  doc
} 