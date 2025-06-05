#import "@preview/cades:0.3.0": qr-code
#import "@preview/numbly:0.1.0": numbly

#import "utils/styles_local.typ": local_style
#show: local_style

#import "utils/header.typ" as header

#let datos_coordenadas = csv("datos_coordenadas.csv", delimiter: " ")

#header


== Antecedentes

Mediante el Oficio N.º 726-2025-GRA/GRAG-SGRN, remitido por la Gerencia Regional de Agricultura del Gobierno Regional de Arequipa, se solicita al Instituto Vial Provincial Caylloma información respecto a la posible superposición entre un predio ubicado en el distrito de Coporaque y las vías que conforman la Red Vial Nacional, Red Vial Urbana y Caminos Rurales.

La solicitud se encuentra relacionada al expediente administrativo N.º 4083940, que corresponde al trámite de asignación de Código de Referencia Catastral y expedición del Certificado de Información Catastral del predio denominado *Cachulli*, ubicado en la jurisdicción mencionada.

== Verificación Cartográfica

Con base en la información digital proporcionada, y tras la correspondiente revisión cartográfica, se verificó que el polígono del predio en consulta *presenta superposición directa en múltiples tramos* con la carretera vecinal *AR-683*, infraestructura perteneciente a la red vial bajo gestión del Instituto Vial Provincial Caylloma.

Dicha superposición es de carácter *grave*, ya que se evidencia a lo largo de diversos segmentos del trazo vial existente, como se muestra en la siguiente imagen:


#figure(
  image("./images/image.png", width: 60%),
  caption: "Imagen que muestra la superposición del predio con la carretera vecinal AR-683.",
)

Los puntos señalados en la tabla corresponden a las coordenadas UTM (Zona 19S) donde se ha identificado una intersección directa entre el polígono del predio y el eje de la carretera vecinal AR-683. No obstante, al tratarse de un polígono cerrado que representa un área, la superposición no se limita únicamente a los puntos mencionados, sino que abarca toda la porción del área delimitada por dicho polígono que intersecta o invade la faja de dominio vial de la carretera mencionada. En ese sentido, la afectación incluye tanto los puntos de cruce como el área contenida entre ellos que se superpone a la vía.

#table(
  columns: 4,
  ..datos_coordenadas.flatten(),
)


== Conclusión

Como resultado del análisis cartográfico realizado, se concluye que el predio denominado *Cachulli* *presenta superposición significativa y reiterada* con la carretera vecinal *AR-683*, infraestructura que forma parte de la red vial bajo administración del Instituto Vial Provincial Caylloma.

Esta superposición afecta directamente la traza de la vía en varios de sus tramos, lo cual debe ser tomado en cuenta en la evaluación técnica del expediente de referencia.



#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,
