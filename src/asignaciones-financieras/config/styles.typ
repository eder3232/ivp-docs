#let style(doc) = {
  show heading.where(level: 1): it => [
    #set align(center)
    #set text(size: 24pt, weight: "bold")
    #it.body
  ]
  show heading.where(level: 2): set heading(
    numbering: (..nums) => {
      let val = nums.pos()
      let segundoValor = val.at(1)
      str(segundoValor) + ")"
    },
  )
  show heading.where(level: 3): set heading(
    numbering: (..nums) => {
      let val = nums.pos()
      let segundoValor = val.at(1)
      let tercerValor = val.at(2)
      str(segundoValor) + "." + str(tercerValor)
    },
  )

  show heading.where(level: 4): set heading(
    numbering: (..nums) => {
      let val = nums.pos()
      let segundoValor = val.at(1)
      let tercerValor = val.at(2)
      let cuartoValor = val.at(3)
      str(segundoValor) + "." + str(tercerValor) + "." + str(cuartoValor)
    },
  )

  doc
}
