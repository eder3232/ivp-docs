#import "../config/styles.typ"

#let entidad = json("../../data/entidad.json")
#let documento = json("../config/document.json")
#let personal = json("../../data/personal.json")

#let entidad_siglas = entidad.siglas

// Valores a cambiar para cada documento

#let numero_documento = 39
#let date_day = 12
#let date_month = 5
#let date_year = 2025
#let asunto = "Consulta de camino de bateas"

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

#let full_date= str(date_day) + "/" + str(date_month) + "/" + str(date_year)

// #set align(center)
= #documento.type N.º #(numero_documento)-#upper(entidad_siglas)-#emisor_abreviated

#table(
  columns: (3fr, 1fr, 8fr),
  align: left,
  // frame:false,
  stroke: none,
  [A], [:], [
    #receptor_full_name
  ],
  [De], [:], [
    #emisor_full_name
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
  stroke: (thickness: 2pt ),
)


///////////////////////////////////////
///////////////////////////////////////

#table(
  // Número de columnas
  columns: 4,
  // Alineación: ITEM y DESCRIPCION a la izquierda, UND centrado, CANT a la derecha
  // Para que ocupe todo el ancho de la página
  // Encabezados
  [ITEM], [DESCRIPCIÓN], [UND], [CANT],
  // Filas de datos
  [01], [PAPEL BOND A4 75 G – BLANCO], [MILLAR], [20],
  [02], [ENGRAMPADOR X 25 HOJAS], [UNIDAD], [2],
  [03], [PERFORADOR], [UNIDAD], [2],
  [04], [ARCHIVADOR LOMO ANCHO TAMAÑO OFICIO – NEGRO], [UNIDAD], [20],
  [05], [FOLDER DE MANILA – A4], [UNIDAD], [50],
  [06], [LAPICERO TINTA SECA (ROJO)], [UNIDAD], [12],
  [07], [LAPICERO TINTA SECA (NEGRO)], [UNIDAD], [12],
  [08], [LAPICERO TINTA SECA (AZUL)], [UNIDAD], [24],
  [09], [LAPICERO TINTA LÍQUIDA (AZUL)], [UNIDAD], [12],
  [10], [LÁPIZ CORRECTOR], [UNIDAD], [06],
  [11], [MARCADOR INDELEBLE], [UNIDAD], [06],
  [12], [TINTA PARA IMPRESORA EPSON L3250 – NEGRO], [UNIDAD], [5],
  [13], [TINTA PARA IMPRESORA EPSON L3250 – MAGENTA], [UNIDAD], [2],
  [14], [TINTA PARA IMPRESORA EPSON L3250 – YELLOW], [UNIDAD], [2],
  [15], [TINTA PARA IMPRESORA EPSON L3250 – CYAN], [UNIDAD], [2],
  [16], [CINTA CORRECTORA RETRÁCTIL], [UNIDAD], [5],
  [17], [PLUMÓN RESALTADOR PUNTA GRUESA], [UNIDAD], [5],
  [18], [PAPEL LUSTRE COLOR PLOMO], [UNIDAD], [20],
  [19], [CINTA ADHESIVA ¾ X 36 YDS], [UNIDAD], [5],
  [20], [USB – 16 GB], [UNIDAD], [02],
  [21], [DISCO DURO – 1 TB], [UNIDAD], [01],
  [22], [PILA DOBLE A (AA) ALCALINA], [UNIDAD], [12],
  [23], [FRANELAS DE LIMPIEZA], [UNIDAD], [12],
  [24], [LIMPIADOR DESINFECTANTE], [UNIDAD], [04],
  [25], [AMBIENTADOR], [UNIDAD], [04],
  [26], [TABLERO ACRÍLICO OFICIO], [UNIDAD], [04],
  [27], [PORTADOCUMENTOS], [UNIDAD], [04],
  [28], [CLIPS DE COLORES (CAJA 100 UNIDADES)], [CAJA], [06],
  [29], [BANDEJA ORGANIZADORA DE ESCRITORIO TIPO TORRE], [UNIDAD], [02],
  [30], [NOTAS ADHESIVAS TIPO POST-IT (75×75 MM, COLORES SURTIDOS) PAQUETE X 12], [PAQUETE], [06],
)


/////////////////////////////////////// 
/////////////////////////////////////// 