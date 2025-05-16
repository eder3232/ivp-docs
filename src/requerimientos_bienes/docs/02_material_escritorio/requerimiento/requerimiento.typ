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
  header: [
    #grid(
      columns: (1fr, 3fr, 1fr),
      align: (horizon, horizon + center, horizon),
      [#figure(image("../../../../assets/ivp-jo.png", width: 50pt))],
      [#text(
          size: 14pt,
        )[Instituto Vial Provincial Caylloma \ #text(size: 9pt)[Año de la Recuperación y Consolidación de la Economía Peruana]]],
      [#figure(image("../../../../assets/mpcaylloma.jpeg", width: 50pt))],
    )
  ],
)
// PIE DE PÁGINA
#set page(numbering: "1 de 1")



//
//
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

Por intermedio del presente documento, solicito a la Gerencia General la aprobación del requerimiento de materiales de oficina, según el detalle que se presenta a continuación:

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

== Justificación del Requerimiento

El presente requerimiento tiene como finalidad dotar al Instituto Vial Provincial Caylloma de los materiales de oficina necesarios para el desarrollo adecuado de las actividades administrativas que se realizan de manera continua en las distintas áreas de la institución.

Los bienes solicitados son indispensables para el correcto registro, archivo, comunicación interna y externa, así como para la elaboración de documentos oficiales y técnicos, contribuyendo así al cumplimiento de las funciones asignadas.

Atentamente,

///////////////////////////////////////
///////////////////////////////////////
