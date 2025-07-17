#import "@preview/cades:0.3.0": qr-code
#import "@preview/numbly:0.1.0": numbly

#import "utils/styles_local.typ": local_style
#show: local_style

#import "utils/header.typ" as header


#let area_a_psad56 = csv("./data/csv/original_psad56/area_a.csv", delimiter: ",")
#let area_b_psad56 = csv("./data/csv/original_psad56/area_b.csv", delimiter: ",")
#let area_excluida_c_psad56 = csv("./data/csv/original_psad56/area_excluida_c.csv", delimiter: ",")
#let area_excluida_d_psad56 = csv("./data/csv/original_psad56/area_excluida_d.csv", delimiter: ",")

#let area_a_wgs84 = csv("./data/csv/procesado_wgs84/area_a.csv", delimiter: ",")
#let area_b_wgs84 = csv("./data/csv/procesado_wgs84/area_b.csv", delimiter: ",")
#let area_excluida_c_wgs84 = csv("./data/csv/procesado_wgs84/area_excluida_c.csv", delimiter: ",")
#let area_excluida_d_wgs84 = csv("./data/csv/procesado_wgs84/area_excluida_d.csv", delimiter: ",")

#header
// INICIO DEL CUERPO DEL INFORME

== Antecedentes

Mediante Oficio N° 032-2025-SGOPCU-GDUR/MPC de fecha 30 de junio de 2025, la Municipalidad Provincial de Caylloma, a través de la Subgerencia de Obras Privadas, Catastro y Urbanismo, remitió al Instituto Vial Provincial de Caylloma el expediente RUT N° 08736-2025 correspondiente al Sr. *JUAN SUPO CCAMA*, quien solicita información sobre la superposición de propiedades privadas con carreteras y/o desarrollos urbanos.

Según la documentación remitida, las propiedades objeto de consulta se encuentran ubicadas en los terrenos denominados "Cuchuquipa y Vilafro", ubicados en el anexo "Taita Huarahuarco", distrito y provincia de Caylloma, departamento de Arequipa.

Para responder adecuadamente a la consulta, se requiere información técnica sobre las carreteras cercanas a los polígonos en cuestión, incluyendo características técnicas, sección de carretera, detalles viales, derecho de vía o faja de servidumbre, así como la identificación de la entidad competente en caso de no poder proporcionar dicha información.

De acuerdo a la documentación recibida, se cuenta con un plano fechado en noviembre de 2006 que contiene cuatro polígonos diferentes, cada uno con sus respectivas coordenadas en el sistema PSAD56 UTM Zona 19. A continuación se presentan las coordenadas de cada área:

// Insertar tabla con coordenadas del "Área A"
#linebreak()
*Coordenadas del Área A:*

// Insertar tabla con coordenadas del "Área B"
#table(
  columns: 3,
  ..area_a_psad56.flatten(),
)
#linebreak()
*Coordenadas del Área B:*

// Insertar tabla con coordenadas del "Área Excluida C"
#table(
  columns: 3,
  ..area_b_psad56.flatten(),
)
#linebreak()
*Coordenadas del Área Excluida C:*

// Insertar tabla con coordenadas del "Área Excluida D"
#table(
  columns: 3,
  ..area_excluida_c_psad56.flatten(),
)
#linebreak()
*Coordenadas del Área Excluida D:*
#table(
  columns: 3,
  ..area_excluida_d_psad56.flatten(),
)

== Análisis

== Conversión de coordenadas

Para realizar el análisis técnico de la consulta, primero se procedió a convertir las coordenadas proporcionadas del sistema PSAD56 UTM Zona 19 al sistema WGS84 UTM Zona 19, que es el estándar actual utilizado. A continuación se presentan las coordenadas convertidas para cada área:

#linebreak()
*Coordenadas del Área A (WGS84):*
// Insertar tabla con coordenadas WGS84 del "Área A"
#table(
  columns: 5,
  ..area_a_wgs84.flatten(),
)

#linebreak()
*Coordenadas del Área B (WGS84):*
// Insertar tabla con coordenadas WGS84 del "Área B"
#table(
  columns: 5,
  ..area_b_wgs84.flatten(),
)

#linebreak()
*Coordenadas del Área Excluida C (WGS84):*
// Insertar tabla con coordenadas WGS84 del "Área Excluida C"
#table(
  columns: 5,
  ..area_excluida_c_wgs84.flatten(),
)

#linebreak()
*Coordenadas del Área Excluida D (WGS84):*
// Insertar tabla con coordenadas WGS84 del "Área Excluida D"
#table(
  columns: 5,
  ..area_excluida_d_wgs84.flatten(),
)

== Análisis de ubicación y superposición con vías

Utilizando el software ArcGIS, se procedió a graficar las coordenadas convertidas al sistema WGS84 para realizar el análisis espacial correspondiente. La visualización permitió identificar claramente dos áreas principales:

- Área A: Ubicada en el sector derecho de la zona en consulta
- Área B: Ubicada en el sector izquierdo, la cual contiene dos áreas excluidas:
  + Área Excluida C: Polígono interno al Área B
  + Área Excluida D: Polígono interno al Área B

En relación a la red vial vecinal bajo competencia del Instituto Vial Provincial de Caylloma, se identificaron dos vías próximas a los polígonos analizados:

- Vía vecinal AR-647: Si bien se encuentra en las proximidades del área en consulta, la distancia entre esta vía y los polígonos analizados es considerablemente grande (superior a 1 km), descartándose cualquier tipo de superposición o afectación.

- Vía vecinal AR-671: Esta vía presenta una situación que requiere especial atención, ya que se ha identificado una superposición con los polígonos analizados, cuyo detalle se abordará en la siguiente sección del informe.

Para sustentar el análisis realizado, se presentan las siguientes imágenes:

#figure(
  image("./data/images/arcgis_points.png", width: 100%),
  caption: [
    Visualización en ArcGIS de los puntos que conforman los polígonos en consulta, mostrando la distribución espacial de las áreas A, B y las áreas excluidas C y D.
  ],
)

#figure(
  image("./data/images/arcgis_layers.png", width: 40%),
  caption: [
    Capas de ArcGIS mostrando los polígonos formados y su relación espacial con las vías vecinales AR-671 y AR-647, evidenciando la superposición con la vía AR-671.
  ],
)

== Análisis de superposición con la vía AR-671

Del análisis espacial realizado, se evidencia una situación particular en la disposición de las áreas A y B con respecto a la vía vecinal AR-671. Las imágenes satelitales de Google Earth permiten observar que estas áreas, que aparentemente formaban parte de un mismo terreno, presentan una separación entre sí que sugiere la existencia de un antiguo trazo vial.

#figure(
  image("./data/images/google_earth_view.png", width: 100%),
  caption: [
    Vista satelital de Google Earth mostrando la disposición del Área A (en verde) y Área B (en azul) en relación a la vía vecinal AR-671 (línea roja).
  ],
)

#figure(
  image("./data/images/google_earth_view_zoom.png", width: 100%),
  caption: [
    Vista ampliada de Google Earth que permite apreciar con mayor detalle la separación entre las áreas A y B, y la superposición del Área A con la vía AR-671 actual.
  ],
)

Es importante notar que el plano presentado data de noviembre de 2006, y en él se observa una franja de separación entre las áreas A y B con un ancho variable entre 20 a 40 metros a lo largo de su extensión. Esta separación sugiere que se realizó considerando un trazo vial anterior, presumiblemente para evitar interferencias con la carretera existente en ese momento.

Sin embargo, el análisis actual revela que existe una significativa superposición entre la vía vecinal AR-671 y el Área A, lo cual difiere del aparente propósito original de la separación entre las áreas. Esta situación requiere un análisis más detallado que se desarrollará en la siguiente sección del informe.

#figure(
  image("./data/images/autocad_vista_general.png", width: 100%),
  caption: [
    Vista general en AutoCAD mostrando la distribución de las áreas A, B, C y D, así como el trazado de las vías vecinales AR-671 y AR-647, con sus respectivas denominaciones.
  ],
)

#figure(
  image("./data/images/autocad_zoom_superposicion.png", width: 100%),
  caption: [
    Detalle en AutoCAD de la zona de superposición, evidenciando la discrepancia entre el eje vial histórico (que generó la separación original entre áreas) y el trazado actual de la vía AR-671.
  ],
)

=== Detalle de la superposición

El análisis detallado de la superposición entre la vía vecinal AR-671 y el Área A revela una situación crítica que requiere especial atención. Como se puede observar en la siguiente figura, existe un segmento significativo de la vía que se superpone directamente con el Área A en consulta.

#figure(
  image("./data/images/autocad_segmento_conflicto.png", width: 100%),
  caption: [
    Segmento de la vía vecinal AR-671 (en rojo) que presenta superposición con el Área A, evidenciando el conflicto espacial existente.
  ],
)

La superposición identificada tiene las siguientes características:
- Longitud del segmento en superposición: 4,362.80 metros
- Ubicación del inicio de la superposición: Progresiva 8+062.81
- Derecho de vía requerido: 16 metros (8 metros a cada lado del eje)

Esta superposición representa un conflicto severo, considerando que la vía vecinal AR-671, como parte de la red vial vecinal, requiere mantener un derecho de vía de 16 metros para garantizar su adecuado funcionamiento y mantenimiento.

#figure(
  image("./data/images/autocad_comparacion_trazos.png", width: 100%),
  caption: [
    Comparación entre el trazo actual de la vía AR-671 y el corredor vial antiguo, mostrando la divergencia que ha generado la superposición con el Área A.
  ],
)

La comparación entre el trazo actual y el corredor vial antiguo, como se muestra en la figura anterior, evidencia una clara desviación del eje original que ha resultado en esta superposición problemática. Esta situación sugiere que el trazado actual de la vía AR-671 se ha desplazado significativamente de su alineamiento histórico, el cual originalmente había sido considerado en la delimitación de las áreas A y B.


== Conclusiones

Del análisis realizado se pueden establecer las siguientes conclusiones:

1. Existe una superposición significativa entre la vía vecinal AR-671 y el Área A en consulta, que se extiende por 4,362.80 metros, iniciando en la progresiva 8+062.81.

2. Esta superposición representa un conflicto técnico-legal importante, considerando que:
  - La vía vecinal AR-671 requiere un derecho de vía de 16 metros de ancho total
  - El área superpuesta forma parte del Área A en consulta
  - La funcionalidad de la vía vecinal podría verse comprometida

3. La evidencia histórica (plano de 2006) muestra que originalmente se consideró una franja de separación entre las áreas A y B, presumiblemente para respetar un trazo vial existente en ese momento.

4. El trazado actual de la vía AR-671 presenta una desviación significativa respecto al corredor vial histórico, lo que ha resultado en la superposición actual con el Área A.

== Adjunto

Para facilitar el acceso a la documentación técnica completa utilizada en este análisis, se ha preparado una carpeta en Google Drive que contiene todos los archivos relevantes, incluyendo planos en formato CAD, imágenes de alta resolución y documentación histórica de referencia.

#figure(image("./data/images/drive.png", width: 80%), caption: [
  Carpeta de Google Drive conteniendo la documentación completa del análisis técnico realizado.
])

#qr-code("https://drive.google.com/drive/folders/1Z63W_gBF218HRMiNxDzdMHY-AJA1gkge", width: 5cm)

https://drive.google.com/drive/folders/1Z63W_gBF218HRMiNxDzdMHY-AJA1gkge

Los archivos compartidos incluyen el análisis detallado de la superposición, los planos históricos y actuales, así como toda la documentación de soporte que fundamenta las conclusiones presentadas en este informe.



#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,


// FIN DEL CUERPO DEL INFORME
// FIN DEL CUERPO DEL INFORME
