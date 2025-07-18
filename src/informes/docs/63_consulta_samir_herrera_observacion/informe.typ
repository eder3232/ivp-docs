#import "@preview/cades:0.3.0": qr-code
#import "@preview/numbly:0.1.0": numbly

#import "utils/styles_local.typ": local_style
#show: local_style

#import "utils/header.typ" as header


#let coordenadas_psad56_original = csv("./data/csv/coordenadas_originales.csv", delimiter: ",")

#let coordenadas_wgs84 = csv("./data/csv/wgs84.csv", delimiter: ";")

#header
// INICIO DEL CUERPO DEL INFORME

== Antecedentes

Mediante el presente documento, me dirijo a usted para informar sobre la consulta realizada respecto a las características técnicas de la vía vecinal AR-681, en atención a la solicitud presentada por el Sr. Samir Herrera Soto.

Mediante HOJA DE COORDINACION N.º 033-2025-SGOPCU-GDUR/MPC, de fecha 11 de julio de 2025, la Sub Gerencia de Obras Privadas y Control Urbano solicita información sobre las características técnicas de la vía vecinal AR-681, específicamente:

- Ancho de vía
- Derecho de vía
- Sección de vía
- Derecho de vía o faja de servidumbre

Asimismo, se adjunta a la solicitud un plano de ubicación con coordenadas en el sistema PSAD56, las cuales se detallan en la siguiente tabla:


#table(
  columns: 2,
  ..coordenadas_psad56_original.flatten(),
)

== Análisis

Para realizar el análisis de la consulta, primero se procedió a convertir las coordenadas del sistema PSAD56 al sistema WGS84, el cual es el sistema de referencia oficial del Perú según la Resolución Jefatural N° 086-2011-IGN/OAJ/DGC. Esta conversión se realizó utilizando el software ArcGIS, obteniéndose las siguientes coordenadas:

// Aquí va la tabla con las coordenadas convertidas a WGS84
#table(
  columns: 5,
  ..coordenadas_wgs84.flatten(),
)

Luego de graficar los puntos proporcionados, se pudo evidenciar una discrepancia significativa entre el polígono obtenido al graficar las coordenadas y los datos presentados por el solicitante en su documentación. Específicamente, los linderos indicados en su memoria descriptiva y plano de ubicación no coinciden con el polígono generado a partir de las coordenadas proporcionadas, lo cual genera inconsistencias en la información presentada.


#figure(
  image("./data/images/google_earth.png", width: 100%),
  caption: [
    Visualización de los puntos proporcionados en Google Earth. Se puede observar que la ubicación de los puntos no coincide con los linderos indicados en la memoria descriptiva y plano de ubicación del predio
  ],
)

Debido a esta imprecisión en las coordenadas proporcionadas, no es posible emitir una opinión técnica adecuada sobre las características de la vía vecinal AR-681 solicitadas. Para poder realizar un análisis preciso y brindar la información requerida, es necesario que se aclaren y corrijan las coordenadas presentadas, de manera que exista concordancia entre:

- Las coordenadas proporcionadas en formato digital
- El plano de ubicación presentado
- La memoria descriptiva del predio

Solo con información consistente y precisa se podrá determinar con exactitud la ubicación del predio y su relación con la vía vecinal AR-681, permitiendo así emitir un pronunciamiento sobre:

- El ancho de vía
- Derecho de vía
- Sección de vía
- Faja de servidumbre

Correspondientes al tramo consultado.


== Conclusiones

1. Debido a la imprecisión e inconsistencia entre las coordenadas proporcionadas, el plano de ubicación y la memoria descriptiva presentada, no es posible emitir una opinión técnica sobre las características de la vía vecinal AR-681 solicitadas.

== Recomendaciones

1. Se recomienda que las coordenadas sean presentadas en el sistema WGS84, ya que:
  - Es el sistema de referencia oficial del Perú según R.J. N° 086-2011-IGN/OAJ/DGC y la Directiva N° 006-2016/SBN que establece su uso obligatorio para levantamientos catastrales de inmuebles estatales
  - Los levantamientos catastrales con Datum PSAD 56 deben ser actualizados a WGS 84 según la Directiva N° 006-2016/SBN
  - La Red Geodésica Horizontal Nacional Clásica basada en PSAD56 ya no es compatible con los niveles de precisión actuales según la R.J. N° 086-2011-IGN/OAJ/DGC
  - Los monumentos del sistema PSAD56 se encuentran destruidos y/o deteriorados, imposibilitando su recuperación y la obtención de parámetros de transformación precisos para escalas mayores a 1:15,000
  - La R.J. N° 086-2011-IGN/OAJ/DGC dio por concluido el período de conversión progresivo del sistema PSAD56, finiquitando su vigencia y uso oficial
  - Para inmuebles colindantes con predios estatales registrados en PSAD 56, es obligatorio realizar un nuevo levantamiento en WGS 84
  - Tiene mayor precisión y compatibilidad con tecnologías modernas de georreferenciación
  - Es el sistema utilizado por la mayoría de dispositivos GPS y aplicaciones de mapeo actuales

2. Se recomienda que la Sub Gerencia de Obras Privadas, Catastro y Urbanismo realice una verificación preliminar de la consistencia de la información presentada por los solicitantes antes de remitir las consultas, a fin de evitar retrasos en los procedimientos administrativos y optimizar el uso de recursos institucionales.


Adjunto

Resolución Jefatural Nº 086-2011-IGN/OAJ/DGC

#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,


// FIN DEL CUERPO DEL INFORME
// FIN DEL CUERPO DEL INFORME
