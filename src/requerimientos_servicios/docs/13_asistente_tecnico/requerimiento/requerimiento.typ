#import "../../../config/styles.typ"

#let entidad = json("../../../../data/entidad.json")
#let documento = json("../../../config/document.json")
#let personal = json("../../../../data/personal.json")

#let entidad_siglas = entidad.siglas

// Valores a cambiar para cada documento

#let numero_documento = 12
#let date_day = 15
#let date_month = 5
#let date_year = 2025
#let asunto = "REQUERIMIENTO DE SERVICIO DE ASISTENTE TÉCNICO PARA LA UNIDAD DE OPERACIONES"


//Funciones necesarias para el correcto funcionamiento del documento

#let full_name(nombres, apellidos) = nombres + ", " + apellidos

#let padDigits = (num, width) => {
  let s = str(num)
  let need = width - s.len()
  let zeros = if need > 0 { "0" * need } else { "" }
  zeros + s
};

// Valores relevantes para el presente documento
#let emisor = personal.jefe_operaciones

#let emisor_full_name = full_name(emisor.nombres, emisor.apellidos)
#let emisor_cargo = emisor.cargo
#let emisor_abreviated = emisor.cargo_abreviado

#let receptor = personal.gerente

#let receptor_full_name = full_name(receptor.nombres, receptor.apellidos)
#let receptor_cargo = receptor.cargo

#let full_date = padDigits(date_day, 2) + "/" + padDigits(date_month, 2) + "/" + str(date_year)

#set page(
  numbering: "1 de 1",
  margin: (
    top: 3.5cm,
    bottom: 2.5cm,
    left: 3.5cm,
    right: 2.5cm,
  ),
  header: [
    #grid(
      columns: (1fr, 3fr, 1fr),
      align: (horizon, horizon + center, horizon),
      [#figure(image("../../../../assets/ivp-caylloma.png", width: 50pt))],
      [#text(
          size: 14pt,
        )[Instituto Vial Provincial Caylloma \ #text(size: 9pt)[Año de la Recuperación y Consolidación de la Economía Peruana]]],
      [#figure(image("../../../../assets/mpcaylloma.jpeg", width: 50pt))],
    )
  ],
)

#set par(justify: true)

// #set align(center)
= #documento.type de #documento.subtype #(documento.subtype_id)-#(documento.type_id)-N.º#(padDigits(numero_documento, 3))-#(date_year)-#upper(entidad_siglas)-#emisor_abreviated


#table(
  columns: (3fr, 1fr, 8fr),
  align: left,
  // frame:false,
  stroke: none,
  [A], [:], [
    #receptor_full_name
    \
    *#receptor_cargo*
  ],
  [De], [:], [
    #emisor_full_name
    \
    *#emisor_cargo*
  ],
  [Asunto], [:], [
    #asunto
  ],
  [Fecha], [:], [
    #full_date
  ],
)

#line(
  length: 100%,
  stroke: (thickness: 2pt),
)


///////////////////////////////////////
///////////////////////////////////////



Por medio de la presente, se solicita la contratación del servicio de *Asistente Técnico* para la Unidad de Operaciones del Instituto Vial Provincial Caylloma, con la finalidad de brindar apoyo en las actividades técnicas y administrativas relacionadas al mantenimiento vial.

Los detalles del servicio requerido se muestran en el siguiente cuadro:

#table(
  columns: (2fr, 2fr, 9fr, 3fr, 3fr),
  align: horizon,
  inset: 5pt,
  stroke: 1pt + black,
  table.header(
    [CANT.],
    [UNID.],
    [DESCRIPCIÓN],
    [COSTO ],
    [TOTAL],
  ),

  [01],
  [SERV.],
  [
    CONTRATACIÓN DE SERVICIO DE ASISTENTE TÉCNICO PARA LA UNIDAD DE OPERACIONES DEL INSTITUTO VIAL PROVINCIAL CAYLLOMA
  ],
  [S/ 2,500.00],
  [S/ 2,500.00],
)

== Justificación:

El presente requerimiento responde a la necesidad de contar con apoyo técnico especializado para las actividades de supervisión, monitoreo y gestión del mantenimiento vial que realiza la Unidad de Operaciones del Instituto Vial Provincial Caylloma, lo cual permitirá mejorar la eficiencia en la ejecución de las intervenciones programadas.

Atentamente,
