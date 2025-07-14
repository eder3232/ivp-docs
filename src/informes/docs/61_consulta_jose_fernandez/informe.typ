#import "@preview/cades:0.3.0": qr-code
#import "@preview/numbly:0.1.0": numbly

#import "utils/styles_local.typ": local_style
#show: local_style

#import "utils/header.typ" as header


#let coordenadas = csv("./data/csv/coordenadas.csv", delimiter: ",")



#header
// INICIO DEL CUERPO DEL INFORME

== Antecedentes

Mediante el documento “Hoja de Coordinación N° 029-2025-SGOPCU-GDUR/MPC”, de fecha 19 de junio de 2025, remitido por la Bach. Arq. Gianni Sileny Vilca Barra, Subgerente de Obras Privadas, Catastro y Urbanismo, al Eco. Tomás Pedro Samayani Vilcahuaman, Gerente General del Instituto Vial Provincial de Caylloma, se solicita información técnica respecto al expediente del Sr. José Roberto Fernandez Sanchez, quien requiere el Certificado de Zonificación y Vías del predio con Partida Registral N° 04004877, Ubicación Rural: Parcela N° 298, distrito de Lluta, provincia de Caylloma, departamento de Arequipa.
La solicitud tiene como finalidad contar con información técnica apropiada sobre las vías próximas al polígono del predio en consulta, así como las características técnicas, sección vial, detalle de vía, derecho de vía y/o faja de servidumbre, entre otros aspectos, para la emisión del certificado correspondiente.

#table(
  columns: 6,
  ..coordenadas.flatten(),
)



== Análisis

Utilizando un software de Sistema de Información Geográfica (GIS), se procedió a graficar las coordenadas corregidas (WGS84) proporcionadas, verificando que la ubicación resultante es consistente con el plano de ubicación presentado por el solicitante.
En relación a la colindancia con la red vial de competencia del Instituto Vial Provincial de Caylloma, se identificó que la vía vecinal más próxima al predio en consulta es la ruta AR-735. Es importante señalar que el lado del terreno que colinda con dicha carretera no es paralelo al eje vial, lo que genera tres distancias distintas entre el predio y la vía: 204.76 m, 190.43 m y 174.60 m, según se observa en el plano generado en AutoCAD.
Dichas distancias son considerablemente mayores al derecho de vía establecido para este tipo de carretera (16 metros en total, es decir, 8 metros a cada lado del eje, según el Manual de Carreteras: Diseño Geométrico DG-2018 del Ministerio de Transportes y Comunicaciones). Por lo tanto, se concluye que no existe ninguna superposición entre el terreno del solicitante y la faja de derecho de vía de la carretera vecinal AR-735, ni con ninguna otra vía de la red vecinal administrada por el Instituto Vial Provincial de Caylloma.
A continuación, se adjuntan las siguientes imágenes que sustentan el análisis realizado:
#figure(
  image("./data/images/cad.png", width: 80%),
  caption: [
    Plano generado en AutoCAD donde se muestran las distancias exactas (204.76 m, 190.43 m y 174.60 m) entre el predio en consulta y el eje de la vía vecinal AR-735.
  ],
)
#figure(
  image("./data/images/google_earth.png", width: 80%),
  caption: [
    Vista satelital (Google Earth) que permite visualizar gráficamente la ubicación del predio respecto a la vía AR-735 y su entorno urbano y rural.
  ],
)
#figure(
  image("./data/images/gis.png", width: 80%),
  caption: [
    Imagen obtenida en ArcGIS, utilizando información del Sistema Nacional de Carreteras (SINAC), que muestra la relación espacial entre el polígono del predio y la vía vecinal AR-735.
  ],
)

== Conclusiones

- El predio en consulta, perteneciente al Sr. José Roberto Fernandez Sanchez, colinda en uno de sus lados con la vía vecinal AR-735, bajo la competencia del Instituto Vial Provincial de Caylloma.
- El lado del predio que se encuentra próximo a la vía AR-735 no es paralelo al eje vial, presentando distancias variables de 204.76 m, 190.43 m y 174.60 m respecto al eje de la carretera, todas ellas considerablemente superiores al derecho de vía establecido (8 m a cada lado del eje).
- En consecuencia, se concluye que no existe superposición alguna entre el terreno del solicitante y la faja de derecho de vía de la carretera vecinal AR-735, ni con ninguna otra vía de la red vecinal administrada por el Instituto Vial Provincial de Caylloma.
- El análisis se sustenta en la información obtenida de archivos oficiales del Sistema Nacional de Carreteras (SINAC), así como en la representación gráfica mediante software GIS, AutoCAD y Google Earth.


#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,


// FIN DEL CUERPO DEL INFORME
// FIN DEL CUERPO DEL INFORME
