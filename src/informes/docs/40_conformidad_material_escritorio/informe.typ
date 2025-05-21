#import "../../config/styles.typ": style
#show: style

#let entidad = json("../../../data/entidad.json")
#let documento = json("../../config/document.json")
#let personal = json("../../../data/personal.json")

#let entidad_siglas = entidad.siglas

// Valores a cambiar para cada documento

#let numero_documento = 40
#let date_day = 21
#let date_month = 5
#let date_year = 2025
#let asunto = "Conformidad de requerimiento de bienes - Material de oficina"

//Funciones necesarias para el correcto funcionamiento del documento

#let full_name(nombres, apellidos) = nombres + " " + apellidos

// Valores relevantes para el presente documento
#let emisor = personal.jefe_operaciones
#let emisor_full_name = full_name(emisor.nombres, emisor.apellidos)
#let emisor_cargo = emisor.cargo
#let emisor_abreviated = emisor.cargo_abreviado

#let receptor = personal.gerente
#let receptor_full_name = full_name(receptor.nombres, receptor.apellidos)
#let receptor_cargo = receptor.cargo

#let full_date = str(date_day) + "/" + str(date_month) + "/" + str(date_year)

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
      [#figure(image("../../../assets/ivp-jo.png", width: 60pt))],
      [#text(
          size: 14pt,
        )[Instituto Vial Provincial Caylloma \ #text(size: 9pt)[Año de la Recuperación y Consolidación de la Economía Peruana]]],
      [#figure(image("../../../assets/mpcaylloma.jpeg", width: 60pt))],
    )
  ],
  header-ascent: 0.5cm,
)

#set par(justify: true)

// #set align(center)
= #documento.type N.º #(numero_documento)-#(date_year)-#upper(entidad_siglas)-#emisor_abreviated

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
  ]
)

#line(
  length: 100%,
  stroke: (thickness: 2pt),
)


///////////////////////////////////////
///////////////////////////////////////
A través del presente documento, se deja constancia de que los bienes solicitados en el "Requerimiento de Bienes BIENES-REQ-N.º002-2025-IVP-CAYLLOMA-JO", correspondiente a materiales de oficina, han sido *recibidos a conformidad* por el Instituto Vial Provincial Caylloma, de acuerdo con la *Orden de compra - guía de internamiento 002-2025*.

Los bienes fueron entregados de forma completa y conforme a las especificaciones técnicas detalladas en el requerimiento, y no se reportan observaciones al respecto.

Por tanto, se autoriza el pago de las siguientes boletas emitidas por la *Librería Haydee*, con RUC N.º *10475114561*:

- Boleta N.º *EB01-777* por un monto de *S/ 1,583.40*
- Boleta N.º *EB01-778* por un monto de *S/ 187.20*

Total a pagar: *S/ 1,770.60*

Se detalla a continuación la relación de los bienes recibidos:

#table(
  // Número de columnas
  columns: 4,
  // Alineación: ITEM y DESCRIPCION a la izquierda, UND centrado, CANT a la derecha
  // Para que ocupe todo el ancho de la página
  // Encabezados
  [ITEM], [DESCRIPCIÓN], [UND], [CANT],
  // Filas de datos
  [01], [PAPEL BOND A4 75 G - BLANCO], [MILLAR], [20],
  [02], [PERFORADOR], [UNIDAD], [2],
  [03], [ARCHIVADOR LOMO ANCHO TAMAÑO OFICIO - NEGRO], [UNIDAD], [20],
  [04], [LAPICERO TINTA SECA (ROJO)], [UNIDAD], [12],
  [05], [LAPICERO TINTA SECA (NEGRO)], [UNIDAD], [12],
  [06], [LAPICERO TINTA SECA (AZUL)], [UNIDAD], [24],
  [07], [LAPICERO TINTA LÍQUIDA (AZUL)], [UNIDAD], [6],
  [08], [LÁPIZ CORRECTOR], [UNIDAD], [06],
  [09], [MARCADOR INDELEBLE], [UNIDAD], [06],
  [10], [TINTA PARA IMPRESORA EPSON L3250 - NEGRO], [UNIDAD], [3],
  [11], [TINTA PARA IMPRESORA EPSON L3250 - MAGENTA], [UNIDAD], [1],
  [12], [TINTA PARA IMPRESORA EPSON L3250 - YELLOW], [UNIDAD], [1],
  [13], [TINTA PARA IMPRESORA EPSON L3250 - CYAN], [UNIDAD], [1],
  [14], [CINTA CORRECTORA RETRÁCTIL], [UNIDAD], [5],
  [15], [PLUMÓN RESALTADOR PUNTA GRUESA], [UNIDAD], [5],
  [16], [PAPEL LUSTRE COLOR PLOMO], [UNIDAD], [20],
  [17], [CINTA ADHESIVA ¾ X 36 YDS], [UNIDAD], [5],
  [18], [USB - 16 GB], [UNIDAD], [02],
  [19], [DISCO DURO - 1 TB], [UNIDAD], [01],
  [20], [PILA DOBLE A (AA) ALCALINA], [UNIDAD], [12],
  [21], [TABLERO ACRÍLICO OFICIO], [UNIDAD], [02],
  [22], [PORTADOCUMENTOS], [UNIDAD], [02],
  [23], [BANDEJA ORGANIZADORA DE ESCRITORIO TIPO TORRE], [UNIDAD], [01],
  [24], [NOTAS ADHESIVAS TIPO POST-IT (75x75 MM, COLORES SURTIDOS) PAQUETE X 12], [PAQUETE], [01],
)

Sin otro particular, es todo en cuanto puedo informar para su conocimiento y fines respectivos.


Atentamente,



///////////////////////////////////////
///////////////////////////////////////
