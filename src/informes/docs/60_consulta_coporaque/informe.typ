#import "@preview/cades:0.3.0": qr-code
#import "@preview/numbly:0.1.0": numbly

#import "utils/styles_local.typ": local_style
#show: local_style

#import "utils/header.typ" as header

#let coordenadas_wgs84 = csv("./data/csv/coordenadas_utm_wgs84_19_sur.csv", delimiter: ",")


#header

// INICIO DEL CUERPO DEL INFORME

== ANTECEDENTES

Mediante *Hoja de Coordinación N° 030-2025-SGOPCU-GDUR-MPC-CHIVAY*, de fecha 24 de junio de 2025, dirigida al Gerente General del Instituto Vial Provincial Caylloma, Eco. Tomas Pedro Samayani Vilcahuaman, la Subgerencia de Obras Privadas, Catastro y Urbanismo solicitó información técnica, cuyo motivo y requerimiento principal se cita a continuación:

#align(left)[
  #text(
    weight: "bold",
  )[El motivo de la presente es para hacer de su conocimiento sobre el OFICIO N° 1276-2025-GRA/GRAG-SGRN presentado por la GERENCIA REGIONAL DE AGRICULTURA DEL GOBIERNO REGIONAL DE AREQUIPA, mediante el cual se hace de conocimiento que se ha aprobado la ejecución del proyecto "MEJORAMIENTO DEL SERVICIO DE CATASTRO, TITULACION Y REGISTRO DE PREDIOS RURALES EN EL DEPARTAMENTO DE AREQUIPA" y solicita *información de los planes viales en digital SHAPE o DXF correspondientes al polígono en consulta georreferenciados en sistema WGS84, ubicado en el DISTRITO DE COPORAQUE, PROVINCIA DE CAYLLOMA, DEPARTAMENTO AREQUIPA*; por lo que a fin de atender lo solicitado, es necesario que nos pueda remitir la información técnica correspondiente de manera urgente o en su defecto indicar quien es la entidad competente para definir estas características.
    Adjunto Código QR con el Cuadro de Datos Técnicos del Polígono en sistema WGS84.]
]

#v(1em)

Asimismo, para una precisa identificación del polígono en consulta al que se refiere la solicitud, se presenta a continuación la tabla de sus coordenadas en sistema UTM WGS84 Zona 19 Sur:

//= INICIO COMENTARIO TABLA DE COORDENADAS UTM =//
// #table(
//   columns: (auto, auto, auto),
//   align: center,
//   [Punto], [Este (m)], [Norte (m)],
//   [Vértice 1], [XXX.XX], [YYYY.YY],
//   [Vértice 2], [XXX.XX], [YYYY.YY],
//   [...], [...], [...],
//   [Vértice N], [XXX.XX], [YYYY.YY],
// )
//= FIN COMENTARIO TABLA DE COORDENADAS UTM =//
//
#table(
  columns: 5,
  ..coordenadas_wgs84.flatten(),
)

== ANÁLISIS

En atención a lo solicitado, la Oficina de Operaciones realizó el análisis espacial del polígono en consulta, determinando su ubicación y su relación con la infraestructura vial existente en el ámbito del Distrito de Coporaque, Provincia de Caylloma, Departamento Arequipa.

Para una mejor comprensión del contexto espacial, se presenta a continuación un recorte del Plan Vial que muestra la zona en análisis:

#figure(image("./data/images/zona_analisis.png", width: 90%), caption: [
  Recorte del Plan Vial Provincial mostrando la zona en análisis.
])


Se identificó que el polígono en consulta se superpone con las siguientes vías de la red vial:

- *Carretera con Código de Ruta Definitivo:*
  - AR-681
- *Rutas con Códigos Provisionales:*
  - R040559
  - R040561
  - R040563
  - R040570

La siguiente imagen, obtenida de un entorno SIG (ArcGIS), ilustra visualmente el polígono en análisis y su relación espacial con las carreteras mencionadas:

#figure(image("./data/images/arcgis.png", width: 90%), caption: [
  Análisis en software GIS donde se muestra la distancia entre
  el polígono del predio y el eje de la vía vecinal AR-735.
])

== RESULTADOS Y ACCIONES REALIZADAS

Para dar cumplimiento al requerimiento de la Hoja de Coordinación N° 030-2025-SGOPCU-GDUR-MPC-CHIVAY, se han realizado las siguientes acciones:

1. *Generación y Carga de Archivos Digitales:* Se han generado y proporcionado los siguientes archivos digitales, correspondientes a los tramos de las carreteras AR-681, R040559, R040561, R040563 y R040570 que guardan relación con el polígono de interés:
- Archivos en formato Shapefile (.shp, .dbf, .shx, .prj, .sbn, .sbx, .cpg).
- Archivos de GPS Garmin (.gdb).
- Archivos convertidos a formato CSV desde los archivos .gdb originales.

#figure(image("./data/images/drive.png", width: 90%), caption: [
  Contenido del drive
])

#figure(image("./data/images/drive_structure.png", width: 90%), caption: [
  Códigos de ruta incluidos
])

#figure(image("./data/images/shapefile_structure.png", width: 90%), caption: [
  Contenido del shapefile
])

2. *Disponibilidad de Información:* Los archivos generados han sido organizados y cargados en una carpeta compartida en la plataforma Google Drive para facilitar su acceso y descarga. El enlace directo para la descarga es el siguiente:

https://drive.google.com/drive/folders/1de-UswhU7C9592zdU06JhWee9SoWMD6i?usp=sharing

#qr-code("https://drive.google.com/drive/folders/1de-UswhU7C9592zdU06JhWee9SoWMD6i?usp=sharing", width: 4cm)


== CONCLUSIONES

1. Se ha dado atención al requerimiento de información técnica sobre los planos viales en formato digital SHAPE o DXF correspondientes al polígono georreferenciado en sistema WGS84, ubicado en el Distrito de Coporaque, Provincia de Caylloma, Departamento Arequipa, según lo solicitado en la Hoja de Coordinación N° 030-2025-SGOPCU-GDUR-MPC-CHIVAY.
2. El análisis espacial realizado por esta Oficina determinó que el polígono en consulta guarda relación directa y se superpone con los siguientes tramos de la red vial: la carretera con Código de Ruta Definitivo AR-681, y las rutas con Códigos Provisionales R040559, R040561, R040563 y R040570.
3. En cumplimiento a la solicitud, se han generado y puesto a disposición los archivos vectoriales (Shapefile) y tablas (CSV) correspondientes a las vías identificadas. *Cabe precisar que los archivos originales de los datos de campo corresponden al formato .gdb (GPS Garmin), los cuales fueron posteriormente convertidos a formato CSV para facilitar su manipulación y visualización.* Toda esta información ha sido cargada en una carpeta compartida en Google Drive, cuyo enlace se detalla en el presente informe para su descarga y uso. *Se enfatiza que el archivo .gdb es el formato oficial y original de los datos recopilados.* Se reitera que toda la información se encuentra en el sistema de coordenadas WGS84, conforme a lo requerido.

#v(2em)

#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]

Atentamente,


// FIN DEL CUERPO DEL INFORME
// FIN DEL CUERPO DEL INFORME
