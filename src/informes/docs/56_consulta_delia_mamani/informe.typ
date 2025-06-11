#import "@preview/cades:0.3.0": qr-code
#import "@preview/numbly:0.1.0": numbly

#import "utils/styles_local.typ": local_style
#show: local_style

#import "utils/header.typ" as header

#let datos_poligono_psad56 = csv("./informacion/datos_solicitante_psad56.csv", delimiter: ",")

#let coordenadas_wgs84 = csv("./informacion/coordenadas_wgs84.csv", delimiter: ",")

#header

== Antecedentes

Mediante la Hoja de Coordinación N.º 015-2025-SGOPCU-GDUR/MPC, emitida por la Subgerente de Obras Privadas, Catastro y Urbanismo de la Municipalidad Provincial de Caylloma, se solicita a este Instituto Vial Provincial información técnica respecto al expediente presentado por la *Sra. Delia Flora Mamani Huertas*, quien requiere la emisión del *Certificado de Zonificación y Vías* para un predio ubicado en el sector de Urinsaya, U.R. San Andrés, distrito de Colca, provincia de Caylloma, departamento de Arequipa.

Como parte del expediente, se incluye un plano que contiene las coordenadas perimétricas del predio en el sistema *PSAD56*. A continuación se presenta la tabla con dichas coordenadas:

#table(
  columns: 3,
  ..datos_poligono_psad56.flatten(),
)

// Aquí insertar tabla de coordenadas PSAD56

== Análisis Técnico

=== Conversión de coordenadas y delimitación espacial

Las coordenadas del plano fueron convertidas al sistema de referencia *WGS84 (UTM)* para su análisis espacial en software GIS. A continuación se presenta la tabla resultante de la conversión:

// Aquí insertar tabla con coordenadas convertidas a WGS84 UTM

#table(
  columns: 3,
  ..coordenadas_wgs84.flatten(),
)

Con base en estas coordenadas, se georreferenció el polígono del terreno en consulta y se analizó su relación con la carretera más próxima.

=== Evaluación de superposición vial

En el entorno del predio se encuentra la vía *AR-681*, que forma parte de la red vecinal a cargo del Instituto Vial Provincial de Caylloma. Para el análisis se consideró una franja de *derecho de vía de 16 metros* (8 metros a cada lado del eje vial).

El análisis espacial fue realizado en ArcMap, y como resultado se obtuvo que *no existe superposición entre el polígono del predio y el derecho de vía definido*.

A continuación se presentan los planos obtenidos durante el análisis:

// Aquí insertar imagen 1 (mapa GIS en ArcMap)

#figure(
  image("./informacion/arcmap.png", width: 100%),
  caption: [Ubicación del polígono en GIS - Sistema WGS84],
)

// Aquí insertar imagen 2 (visualización en Google Earth)

#figure(
  image("./informacion/earth.png", width: 100%),
  caption: [Ubicación del polígono en Google Earth - Sistema WGS84],
)

=== Observaciones sobre la precisión del polígono

Al proyectar el polígono con las coordenadas convertidas en Google Earth, se detectó una *discrepancia entre la ubicación visual del terreno y la posición del polígono generado*. Este desfase sugiere que las coordenadas podrían no corresponder con precisión a la localización del predio visible en imágenes satelitales.

Cabe resaltar que el plano proporcionado en el expediente muestra una ubicación aproximada del terreno que *no coincide con las coordenadas técnicas adjuntas*. En tal sentido, la validez de este análisis depende estrictamente de la veracidad de los datos contenidos en el plano.

== Conclusiones

- No se evidencia superposición del terreno en consulta con el derecho de vía de la carretera AR-681, *siempre que las coordenadas proporcionadas sean correctas*.
- Se detecta un desfase entre la posición del polígono (generado con coordenadas) y la ubicación visual del predio en imágenes satelitales. Este hecho debe ser considerado por la entidad solicitante.
- La vía AR-681 forma parte de la *Red Vecinal* y es de competencia del Instituto Vial Provincial de Caylloma y tiene las siguientes características:

#table(
  columns: (3fr, 4fr),
  [Tipo de terreno], [Plano],
  [Estado de vía], [Bueno],
  [Tipo de superficie], [Asfaltado],
  [Ancho de plataforma], [5m],
)



== Anexos

En el enlace adjunto se adjuntan los archivos de análisis.

#qr-code("https://drive.google.com/drive/folders/13BR2vbCZAYYKrft9eoYsyH3TEcW7cOEt?usp=sharing", width: 4cm)

https://drive.google.com/drive/folders/13BR2vbCZAYYKrft9eoYsyH3TEcW7cOEt?usp=sharing

- Tabla de coordenadas PSAD56
- Polygono coordenadas convertidas a WGS84 UTM
- Imagen satelital del terreno (Google Earth)
- Carretera AR-681 de la red vecinal con su derecho de vía.



#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,
