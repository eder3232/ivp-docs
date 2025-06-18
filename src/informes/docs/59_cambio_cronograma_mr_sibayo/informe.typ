#import "@preview/cades:0.3.0": qr-code
#import "@preview/numbly:0.1.0": numbly

#import "utils/styles_local.typ": local_style
#show: local_style

#import "utils/header.typ" as header


#let coordenadas_psad56_original = csv("./data/csv/1_datos_solicitante_psad56.txt", delimiter: ",")

#let coordenadas_wgs84_corregidas = csv("./data/csv/1_2_puntos_corregidos_wgs84.csv", delimiter: ",")

#header
// INICIO DEL CUERPO DEL INFORME







#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,


// FIN DEL CUERPO DEL INFORME
// FIN DEL CUERPO DEL INFORME