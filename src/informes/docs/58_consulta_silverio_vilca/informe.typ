#import "@preview/cades:0.3.0": qr-code
#import "@preview/numbly:0.1.0": numbly

#import "utils/styles_local.typ": local_style
#show: local_style

#import "utils/header.typ" as header


#let coordenadas_psad56_original = csv("./data/csv/1_datos_solicitante_psad56.txt", delimiter: ",")

#let coordenadas_wgs84_corregidas = csv("./data/csv/1_2_puntos_corregidos_wgs84.csv", delimiter: ",")

#header
// INICIO DEL CUERPO DEL INFORME

== Antecedentes

Mediante el documento de la referencia, la Subgerencia de Obras Privadas,
Catastro y Urbanismo solicita información técnica sobre las vías próximas
al predio del Sr. *Silverio Aguilar Vilca*, con el fin de emitir un
Certificado de Zonificación y Vías.

En la revisión inicial de la documentación, se observó que el plano
original presentado por el administrado contenía coordenadas en el datum
PSAD56 que presentaban inconsistencias con la ubicación gráfica del
predio. Dicha observación fue comunicada oportunamente a la *Bach. Arq.
Gianni Sileny Vilca Barra*.

#table(
  columns: 2,
  ..coordenadas_psad56_original.flatten(),
)

Posteriormente, se recibió una hoja adicional con cuatro (4) coordenadas
corregidas en el datum WGS84, las cuales son la base para el presente
análisis y se detallan en la siguiente tabla:

#table(
  columns: 3,
  ..coordenadas_wgs84_corregidas.flatten(),
)



== Análisis

Utilizando un software de Sistema de Información Geográfica (GIS), se
procedió a graficar las coordenadas corregidas (WGS84) proporcionadas. Se
verificó que la ubicación resultante es consistente con el plano de
ubicación presentado por el solicitante.

En lo que respecta a la colindancia con la red vial de competencia del
Instituto Vial Provincial de Caylloma, se ha identificado que la vía
vecinal más próxima al predio en consulta es la ruta *AR-735*.

El análisis de distancia determina que el perímetro del predio se
encuentra a *200 metros* del eje de la mencionada vía en su punto más
cercano. De acuerdo con el *Manual de Carreteras: Diseño Geométrico
DG-2018* del Ministerio de Transportes y Comunicaciones, el derecho de
vía para una carretera de estas características es de 16 metros (8 metros
a cada lado del eje).

Dado que la distancia del predio al eje de la vía (200 m) es
significativamente mayor que el semiancho del derecho de vía (8 m), se
concluye que *no existe superposición* alguna entre el terreno del
solicitante y la faja de derecho de vía de la carretera vecinal AR-735,
como se evidencia en las siguientes imágenes.

#figure(
  image("./data/images/gis.png", width: 100%),
  caption: [
    Análisis en software GIS donde se muestra la distancia entre
    el polígono del predio y el eje de la vía vecinal AR-735.
  ],
)

#figure(
  image("./data/images/google_earth.png", width: 100%),
  caption: [
    Vista satelital (Google Earth) que evidencia la no
    superposición del predio con la vía.
  ],
)

#figure(
  image("./data/images/cad.png", width: 100%),
  caption: [
    Distancia del predio al eje de la vía vecinal AR-735.
  ],
)

== Conclusiones

+ El predio en consulta, perteneciente al Sr. Silverio Aguilar Vilca,
  tiene como vía aledaña más cercana a la ruta vecinal *AR-735*, la cual
  se encuentra bajo la competencia del IVP Caylloma.

+ El predio *no presenta superposición* con el derecho de vía de la
  mencionada carretera, al encontrarse el límite de propiedad a una
  distancia de 200 metros del eje de la misma.

Adjunto

+ Mapa de la carretera vecinal AR-735.

#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,


// FIN DEL CUERPO DEL INFORME
// FIN DEL CUERPO DEL INFORME