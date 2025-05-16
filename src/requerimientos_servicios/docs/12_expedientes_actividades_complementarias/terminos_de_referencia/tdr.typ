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
#let asunto = "REQUERIMIENTO DE SERVICIO DE ELABORACIÓN DE EXPEDIENTES TECNICOS DE ACTIVIDADES COMPLEMENTARIAS DE MANTENIMIENTO PERIÓDICO DE LA RED VIAL PROVINCIAL DE CAYLLOMA"

//Funciones necesarias para el correcto funcionamiento del documento

#let full_name(nombres, apellidos) = nombres + " " + apellidos

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

#show heading.where(level: 1): it => [
  #set align(center) // centrar
  #set text(size: 24pt, weight: "bold") // tamaño y negrita
  #it.body // el propio texto del título
]

#show heading.where(level: 2): set heading(
  numbering: (..nums) => {
    let val = nums.pos()
    let segundoValor = val.at(1)
    str(segundoValor) + ")"
  },
)

///////////////////////////////////////
///////////////////////////////////////

#let terms = json("./data_tdr_asistente_tecnico.json")


= Términos de Referencia

== Denominación de la Contratación
#terms.name

== Objeto de la Contratación
#terms.objeto_contratacion

== Antecedentes
#terms.antecedentes

== Justificación
#terms.justificacion

== Finalidad Pública
#terms.finalidad_publica

== Alcance del Servicio
#for item in terms.alcance_servicio [
  - #item
]

== Plazo de Ejecución
- *Duración:* #terms.plazo_ejecucion.duracion
- *Inicio:* #terms.plazo_ejecucion.inicio
- *Fecha límite de entrega:* #terms.plazo_ejecucion.fecha_limite_entrega

== Lugar de Ejecución
#terms.lugar_ejecucion

== Requisitos del Proveedor
- *Tipo:* #terms.requisitos_proveedor.tipo
- *RUC:* #terms.requisitos_proveedor.ruc
- *Habilitación en OSCE:* #terms.requisitos_proveedor.habilitacion_osce
- *Formación:* #terms.requisitos_proveedor.formacion
- *Experiencia:* #terms.requisitos_proveedor.experiencia

== Supervisión y Conformidad
- *Responsable:* #terms.supervision_conformidad.responsable

#terms.supervision_conformidad.descripcion

#terms.supervision_conformidad.observacion

== Valor Referencial
- *Monto:* #terms.valor_referencial.monto

#terms.valor_referencial.observaciones

== Forma de Pago
- *Modalidad:* #terms.forma_pago.modalidad
- *Monto:* #terms.forma_pago.monto

#for item in terms.forma_pago.condiciones [
  - #item
]

== Condiciones del Servicio

=== Obligaciones del Contratista
#for item in terms.condiciones_servicio.obligaciones_contratista [
  - #item
]

=== Prohibiciones
#for item in terms.condiciones_servicio.prohibiciones [
  - #item
]

=== Causales de Resolución
#for item in terms.condiciones_servicio.causales_resolucion [
  - #item
]

== Penalidades
#terms.penalidades.descripcion
- *Porcentaje:* #terms.penalidades.porcentaje
- *Límite:* #terms.penalidades.limite

#for item in terms.penalidades.condiciones [
  - #item
]

== Garantía
#terms.garantia.descripcion
- *Plazo:* #terms.garantia.plazo

#for item in terms.garantia.condiciones [
  - #item
]
