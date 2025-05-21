#import "@preview/cades:0.3.0": qr-code

#import "../../config/styles.typ": style
#show: style

#let entidad = json("../../../data/entidad.json")
#let documento = json("../../config/document.json")
#let personal = json("../../../data/personal.json")

#let entidad_siglas = entidad.siglas

//Documentos locales

#let datos_poligono = csv("datos_poligono.csv", delimiter: ";")
// Valores a cambiar para cada documento

#let numero_documento = 41
#let date_day = 21
#let date_month = 5
#let date_year = 2025
#let asunto = "Consulta de superposición de polígono con la vía AR-109"

#let referencia = (
  "Hoja de coordinación N.º 012-2025-SGOPCU-GDUR-MPC-CHIVAY",
)

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

#set heading(
  numbering: (..it) => if it.pos().len() <= 1 { none } else {
    numbering("I.1.", ..it.pos().slice(1))
  },
)

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
  ],
  [Referencia], [:], [
    #referencia.at(0)
  ],
)

#line(
  length: 100%,
  stroke: (thickness: 2pt),
)


///////////////////////////////////////
///////////////////////////////////////
== ANTECEDENTES

Mediante la Hoja de Coordinación N.º 012-2025-SGOPCU-GDUR/MPC, recibida con Expediente RUT N° 4516-2025, la Subgerencia de Obras Privadas, Catastro y Urbanismo de la Municipalidad Provincial de Caylloma solicita el pronunciamiento técnico del Instituto Vial Provincial de Caylloma respecto a los planos viales de un polígono en consulta, delimitado en un plano adjunto.

== ANÁLISIS

En atención a la solicitud, se realizó la revisión de la ubicación del polígono en consulta respecto a la Red Vial Provincial del ámbito de competencia del IVP Caylloma.

Con la finalidad de brindar precisión sobre el polígono consultado, a continuación se presenta la tabla con las coordenadas proporcionadas por el solicitante. Estas se encuentran referidas al sistema geodésico *PSAD56 - Zona 19 Sur*, utilizado históricamente en el país para trabajos de planificación y catastro:

#table(
  columns: 2,
  ..datos_poligono.flatten(),
)

_(Fuente: Coordenadas proporcionadas por el solicitante – Datum PSAD56, zona 19 Sur)_

Para una mejor interpretación de la ubicación geoespacial del polígono consultado, se presentan a continuación las vistas referenciales obtenidas mediante herramientas de cartografía digital: una mediante Google Earth y otra a través del entorno SIG de ArcGIS. Estas visualizaciones se generaron a partir de la conversión de coordenadas al sistema geodésico WGS84.

#figure(
  image("google_earth.png", width: 100%),
  caption: [Ubicación del polígono en Google Earth - Sistema WGS84],
)

#figure(
  image("arcgis.png", width: 100%),
  caption: [Visualización del polígono en ArcGIS - Sistema WGS84],
)

Tras el análisis técnico, se concluye que el polígono consultado se encuentra próximo a la vía AR-109, clasificada dentro de la *Red Vial Departamental*, según el Clasificador de Rutas del SINAC (D.S. N°012-2013-MTC).

Cabe precisar que el Instituto Vial Provincial de Caylloma tiene competencia exclusiva sobre las vías comprendidas en la *Red Vial Vecinal*, por lo que la vía en mención no se encuentra bajo jurisdicción de esta entidad.

En ese sentido, la vía identificada como AR-109 pertenece a la Red Vial Departamental, cuya administración y mantenimiento es competencia exclusiva de la *Gerencia Regional de Transportes y Comunicaciones del Gobierno Regional de Arequipa*, conforme al Clasificador de Rutas del SINAC (D.S. N.º 012-2013-MTC) y normativa vigente.

Por tanto, cualquier evaluación técnica o pronunciamiento respecto a la afectación, modificación o autorización relacionada con dicha vía debe ser solicitada directamente a dicha entidad competente.

Con el objetivo de asegurar la trazabilidad de la información técnica utilizada en el presente informe, se ha dispuesto el acceso público a los archivos digitales correspondientes al polígono en consulta. Este paquete incluye:

- Shapefile compatible con ArcGIS/QGIS
- Archivo Excel con las coordenadas originales en PSAD56
- Archivo Kmz en el sistema WGS84 para Google Earth

El acceso a estos archivos puede realizarse escaneando el siguiente código QR o visitando el enlace respectivo.

#qr-code("https://drive.google.com/drive/folders/1qrA3ct2miyzDiF9T2qDQNU66bOemvT_j", width: 4cm)

_"https://drive.google.com/drive/folders/1qrA3ct2miyzDiF9T2qDQNU66bOemvT_j"_

== CONCLUSIÓN

- El polígono en consulta se encuentra colindante a la vía AR-109, perteneciente a la Red Vial Departamental.
- En consecuencia, *no es competencia del Instituto Vial Provincial de Caylloma emitir pronunciamiento técnico sobre dicha vía*, recomendándose que la solicitud sea canalizada a la instancia correspondiente del Gobierno Regional.


#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,



///////////////////////////////////////
///////////////////////////////////////
