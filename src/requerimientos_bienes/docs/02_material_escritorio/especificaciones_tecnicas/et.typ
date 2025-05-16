#import "../../../config/styles.typ"

#let entidad = json("../../../../data/entidad.json")
#let documento = json("../../../config/document.json")
#let personal = json("../../../../data/personal.json")

#let entidad_siglas = entidad.siglas

// Valores a cambiar para cada documento

#let numero_documento = 2
#let date_day = 12
#let date_month = 5
#let date_year = 2025
#let asunto = "REQUERIMIENTO DE MATERIALES DE OFICINA"

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
      [#figure(image("../../../../assets/ivp-jo.png", width: 60pt))],
      [#text(
          size: 14pt,
        )[Instituto Vial Provincial Caylloma \ #text(size: 9pt)[Año de la Recuperación y Consolidación de la Economía Peruana]]],
      [#figure(image("../../../../assets/mpcaylloma.jpeg", width: 60pt))],
    )
  ],
  header-ascent: 0.5cm,
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


= Especificaciones Técnicas

== Denominación de la contratación
ADQUISICIÓN DE MATERIALES DE OFICINA PARA EL INSTITUTO VIAL PROVINCIAL CAYLLOMA

== Objeto de la contratación
La presente contratación tiene por objeto la adquisición de materiales de oficina necesarios para el adecuado funcionamiento administrativo del Instituto Vial Provincial Caylloma.

== Justificación de la contratación

La presente contratación se justifica en la necesidad de contar con materiales de oficina indispensables para el desarrollo de las funciones administrativas y técnicas del Instituto Vial Provincial Caylloma.
Estos insumos serán utilizados principalmente para las labores de planificación, elaboración, archivo y control documental de las actividades vinculadas a los mantenimientos rutinarios, periódicos actividades compelemntarias viales que realiza la entidad.
Su adquisición es esencial para garantizar una gestión eficiente, oportuna y debidamente documentada en el marco de las competencias institucionales.

== Finalidad pública

Con la adquisición de los materiales de oficina requeridos, se busca garantizar el adecuado funcionamiento operativo y administrativo del Instituto Vial Provincial Caylloma, en beneficio de los ciudadanos de la provincia de Caylloma.
De esta manera, se contribuye directamente a la continuidad y eficiencia de las intervenciones de mantenimiento vial en los diferentes distritos de la provincia, promoviendo la conectividad, seguridad vial y desarrollo local.

== Detalle de bienes requeridos

#table(
  columns: (1fr, 5fr, 2fr, 2fr),
  align: (center, left, center, center),
  stroke: 0.5pt + black,
  [ITEM], [DESCRIPCIÓN], [UND], [CANT],
  [01], [PAPEL BOND A4 75 G - BLANCO], [MILLAR], [20],
  [02], [PERFORADOR], [UNIDAD], [2],
  [03], [ARCHIVADOR LOMO ANCHO TAMAÑO OFICIO - NEGRO], [UNIDAD], [20],
  [04], [LAPICERO TINTA SECA (ROJO)], [UNIDAD], [12],
  [05], [LAPICERO TINTA SECA (NEGRO)], [UNIDAD], [12],
  [06], [LAPICERO TINTA SECA (AZUL)], [UNIDAD], [24],
  [07], [LAPICERO TINTA LÍQUIDA (AZUL)], [UNIDAD], [6],
  [08], [LÁPIZ CORRECTOR], [UNIDAD], [6],
  [09], [MARCADOR INDELEBLE], [UNIDAD], [6],
  [10], [TINTA PARA IMPRESORA EPSON L3250 - NEGRO], [UNIDAD], [3],
  [11], [TINTA PARA IMPRESORA EPSON L3250 - MAGENTA], [UNIDAD], [1],
  [12], [TINTA PARA IMPRESORA EPSON L3250 - YELLOW], [UNIDAD], [1],
  [13], [TINTA PARA IMPRESORA EPSON L3250 - CYAN], [UNIDAD], [1],
  [14], [CINTA CORRECTORA RETRÁCTIL], [UNIDAD], [5],
  [15], [PLUMÓN RESALTADOR PUNTA GRUESA], [UNIDAD], [5],
  [16], [PAPEL LUSTRE COLOR PLOMO], [UNIDAD], [20],
  [17], [CINTA ADHESIVA ¾ X 36 YDS], [UNIDAD], [5],
  [18], [USB - 16 GB], [UNIDAD], [2],
  [19], [DISCO DURO - 1 TB], [UNIDAD], [1],
  [20], [PILA DOBLE A (AA) ALCALINA], [UNIDAD], [12],
  [21], [TABLERO ACRÍLICO OFICIO], [UNIDAD], [2],
  [22], [PORTADOCUMENTOS], [UNIDAD], [2],
  [23], [BANDEJA ORGANIZADORA DE ESCRITORIO TIPO TORRE], [UNIDAD], [1],
  [24], [NOTAS ADHESIVAS TIPO POST-IT (75x75 MM, COLORES SURTIDOS) PAQUETE X 12], [PAQUETE], [1],
)

== Características técnicas mínimas

Todos los productos deberán ser nuevos, en buen estado, y contar con las características físicas y funcionales necesarias para su uso inmediato.
- No se aceptarán productos deteriorados, usados, remanufacturados, adulterados ni próximos a vencerse.
- Las tintas deben ser originales y compatibles con el modelo Epson L3250.

== Lugar y plazo de entrega

- *Lugar:* Oficina del Jefe de Operaciones del Instituto Vial Provincial Caylloma – Terminal Terrestre Oficina 203B – 204B, Chivay.
- *Plazo:* Dentro de un máximo de cinco (05) días hábiles contados desde la emisión de la orden de compra.

== Recepción y conformidad

La recepción estará a cargo del _Jefe de Operaciones del Instituto Vial Provincial Caylloma_, quien verificará la cantidad, calidad y cumplimiento de las especificaciones antes de emitir la conformidad.

== Requisitos del proveedor

El proveedor deberá cumplir con los siguientes requisitos:
- Ser persona natural o jurídica con RUC vigente.
- No encontrarse inhabilitado para contratar con el Estado Peruano.
- Contar con Código de Cuenta Interbancario (CCI) activo.
- Emitir comprobante electrónico autorizado por SUNAT.

== Garantía

Se requerirá una garantía mínima de tres (03) meses para los bienes adquiridos, la cual deberá cubrir fallas de fábrica y defectos de funcionamiento.

== Penalidades

En caso de incumplimiento en el plazo de entrega, se aplicará una penalidad del 0.10 % del monto total por cada día calendario de retraso, conforme al artículo 165 del Reglamento de la Ley de Contrataciones del Estado.
