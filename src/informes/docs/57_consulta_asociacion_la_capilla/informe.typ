#import "@preview/cades:0.3.0": qr-code
#import "@preview/numbly:0.1.0": numbly

#import "utils/styles_local.typ": local_style
#show: local_style

#import "utils/header.typ" as header

#let coordenadas_wgs84 = csv("./data/csv/coordenadas_wgs84.csv", delimiter: ",")

#header

== ANTECEDENTES

En atención al documento con Hoja de Coordinación N.° 021-2025-SGOPCU-GDUR-MPC-CHIVAY, suscrito por la Subgerencia de Obras Privadas, Catastro y Urbanismo de la Municipalidad Provincial de Caylloma, se solicita información técnica sobre el expediente del Sr. *Rivera Taype Gusman Teodoro*, relacionado con el predio ubicado en la *Asociación de Vivienda Ampliación La Capilla*, en el distrito de Yanque, provincia de Caylloma, departamento de Arequipa.

El propósito de la solicitud es contar con información técnica adecuada sobre las vías colindantes al predio, con el fin de emitir un *Certificado de Zonificación y Vías*.

== DESCRIPCIÓN DEL PREDIO EN CONSULTA

El solicitante ha adjuntado un plano que contiene las coordenadas UTM - WGS84 del polígono en consulta, que delimitan el área de la Asociación de Vivienda Ampliación La Capilla.

// COMENTARIO: Aquí insertar la tabla con coordenadas del polígono delimitado.

#table(
  columns: 2,
  ..coordenadas_wgs84.flatten(),
)

== IDENTIFICACIÓN DE LA VÍA COLINDANTE

Según los registros técnicos del *Instituto Vial Provincial de Caylloma*, el predio consultado es colindante con una vía perteneciente a la *Red Vial Vecinal*, identificada con el *código de ruta provisional R040574*.

+ Dicha vía actualmente no se encuentra registrada correctamente en el SINAC.
+ Su trazado en el archivo shapefile disponible no refleja fielmente su trazo real en campo.
+ Por ello, se realizó una *verificación técnica in situ*, incluyendo mediciones y toma de fotografías.

== CARACTERÍSTICAS DE LA VÍA EN CAMPO

Durante la inspección técnica se constataron las siguientes características en el tramo colindante con el predio:

- La vía tiene una calzada de *7.00 metros* de ancho total, correspondiente a dos carriles de 3.5 m cada uno.
- Posee una *vereda* construida únicamente en el lado opuesto al predio en consulta.
- Del lado colindante al predio, existe una *cuneta* de concreto con una proyección horizontal de *0.75 metros*.
- No existen otros elementos construidos como bermas o veredas en ese tramo del lado del predio consultado.

#figure(
  image("./data/images/1.jpg", height: 45%),
  caption: [Foto 1 - Vía en consulta],
)

#figure(
  image("./data/images/2.jpg", height: 45%),
  caption: [Foto 2 - Vía en consulta],
)

#figure(
  image("./data/images/3.jpg", height:  45%),
  caption: [Foto 3 - Vía en consulta],
)

#figure(
  image("./data/images/4.jpg", height:  45%),
  caption: [Foto 4 - Vía en consulta],
)

#figure(
  image("./data/images/5.jpg", height: 45%),
  caption: [Foto 5 - Vía en consulta],
)


// COMENTARIO: Aquí insertar las fotografías y evidencias de la inspección en campo.

== ANÁLISIS NORMATIVO DEL DERECHO DE VÍA

De acuerdo al *Manual de Diseño Geométrico de Carreteras DG-2018*, aprobado por el MTC, el derecho de vía recomendado para carreteras de características similares es de *16.00 metros* (8.00 m hacia cada lado del eje).

Sin embargo, la norma establece que en zonas urbanas este valor puede ser *reducido* en función del entorno y disponibilidad de espacio.

En el caso específico del predio ubicado en la Asociación de Vivienda Ampliación La Capilla, se encuentra dentro de una *zona urbana consolidada del distrito de Yanque*. Por lo tanto, se propone considerar un derecho de vía reducido, desde el eje de la vía hasta el límite del predio, compuesto por:

+ *3.50 metros* (ancho de un carril de la vía)
+ *0.75 metros* (ancho de la cuneta)
+ *1.80 metros* (franja de reserva técnica para infraestructura urbana futura)

== FUNDAMENTO DE LA FRANJA ADICIONAL

La franja de *1.80 metros* adicionales al borde de la cuneta no corresponde a infraestructura existente, pero se considera técnicamente adecuada su inclusión dentro del derecho de vía.

Esto se fundamenta en los siguientes puntos:

- Permite *preservar una franja de seguridad* entre la vía y el predio.
- Facilita la *futura implementación de vereda* o mobiliario urbano, bajo responsabilidad de la municipalidad distrital.
- Se alinea con los criterios establecidos en el DG-2018 para zonas urbanas.

== CONCLUSIONES Y RECOMENDACIONES

+ El polígono consultado colinda con la vía identificada con código provisional *R040574*, perteneciente a la red vial vecinal bajo competencia del *Instituto Vial Provincial de Caylloma*.
+ Tras la inspección técnica en campo, se ha verificado que la vía tiene una *calzada de 7.00 metros* (dos carriles de 3.50 m) y una *cuneta* de 0.75 m de ancho en el lado colindante al predio.
+ Conforme a la normativa del *DG-2018*, y considerando que el tramo se ubica en zona urbana del distrito de Yanque, el *derecho de vía desde el eje vial hacia el predio en consulta debe considerarse en 6.05 metros*, distribuidos de la siguiente forma:
  - *3.50 metros* de calzada
  - *0.75 metros* de cuneta
  - *1.80 metros* de franja de reserva técnica para futura infraestructura vial
+ La franja de *1.80 metros* posterior a la cuneta se reconoce como *área de reserva vial* necesaria para garantizar el desarrollo adecuado de elementos complementarios de la vía, tales como veredas, drenaje, señalización o mobiliario urbano.



#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,
