#import "@preview/cades:0.3.0": qr-code

#import "../../config/styles.typ": style
#show: style

#set text(lang: "es")

#let entidad = json("../../../data/entidad.json")
#let documento = json("../../config/document.json")
#let personal = json("../../../data/personal.json")

#let entidad_siglas = entidad.siglas

//Documentos locales


//generales
#let numero_documento = 49
#let date_day = 28
#let date_month = 5
#let date_year = 2025
#let asunto = "METAS, ACTIVIDADES Y UBICACIÓN DE LAS ACTIVIDADES COMPLEMENTARIAS PARA EL \"MANTENIMIENTO VIAL RUTINARIO DEL CAMINO VECINAL EMP. AR-691 - CALLA CALLA - YURACCANCHA - CUCHUHURI - PALLALLMAYO (KM 11+920) - ACTIVIDAD COMPLEMENTARIA CONSERVACION DE LAS SEÑALES VERTICALES\""


#let referencia = (
  "",
)

//Funciones necesarias para el correcto funcionamiento del documento

#let full_name(nombres, apellidos) = nombres + ", " + apellidos

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

#let receptor = personal.gerente_encargado
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
      [#figure(image("../../../assets/ivp-jo.png", width: 60pt), numbering: none)],
      [#text(
          size: 14pt,
        )[Instituto Vial Provincial Caylloma \ #text(size: 9pt)[Año de la Recuperación y Consolidación de la Economía Peruana]]],
      [#figure(image("../../../assets/mpcaylloma.jpeg", width: 60pt), numbering: none)],
    )
  ],
  header-ascent: 0.5cm,
)

#set par(justify: true)

// #set heading(
//   numbering: (..it) => if it.pos().len() <= 1 { none } else {
//     numbering("I.1.", ..it.pos().slice(1))
//   },
// )

#show heading.where(level: 1): set heading(numbering: none)
#set heading(numbering: (_, ..nums) => numbering("I.1", ..nums))

// #set align(center)
= #documento.type N.º #(padDigits(numero_documento, 3))-#(date_year)-#upper(entidad_siglas)-#emisor_abreviated

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
  // [Referencia], [:], [
  //   #referencia.at(0)
  // ],
)

#line(
  length: 100%,
  stroke: (thickness: 2pt),
)
#import "@preview/numbly:0.1.0": numbly

// #set enum(full:true, numbering: numbly("{1:1.1}.", "{2:1.}", "{3:a})","({4})" ))
#set enum(full: true, numbering: numbly("{1:1.1}."))

///////////////////////////////////////
///////////////////////////////////////
///////////////////////////////////////
Mediante la presente me dirijo a usted para saludarlo y a la vez derivarle el Documento Técnico de la Actividad Complementaria para el Camino Vecinal EMP. AR-691 - CALLA CALLA - YURACCANCHA - CUCHUHURI - PALLALLMAYO (KM 11+920), Distrito de Callalli, al respecto informe lo siguiente:

== Introducción

El mantenimiento vial rutinario es una actividad fundamental para conservar en condiciones óptimas la infraestructura vial, garantizando la transitabilidad y seguridad de los usuarios, especialmente en zonas rurales donde los caminos vecinales constituyen la principal vía de acceso a centros poblados, servicios básicos y mercados locales.

En ese contexto, el presente informe se elabora en el marco del expediente técnico denominado "MANTENIMIENTO VIAL RUTINARIO DEL CAMINO VECINAL EMP. AR-691 - CALLA CALLA - YURACCANCHA - CUCHUHURI - PALLALLMAYO (KM 11+920) - ACTIVIDAD COMPLEMENTARIA CONSERVACION DE LAS SEÑALES VERTICALES", cuyo objetivo es ejecutar la reparación del Baden en la progresiva 5+740, que son estructuras fundamentales para el adecuado drenaje superficial y la protección de la plataforma vial.

Este documento detalla los antecedentes, justificación, objetivos, alcances y lineamientos técnicos de las intervenciones previstas, buscando contribuir a la mejora de la conectividad y el desarrollo socioeconómico de las comunidades beneficiarias ubicadas a lo largo del eje vial intervenido.


== Descripción del camino vecinal

La carretera EMP. AR-691 - CALLA CALLA - YURACCANCHA - CUCHUHURI - PALLALLMAYO (KM 11+920) es una vía afirmada de acceso rural que conecta varias comunidades locales. Tiene un tráfico moderado, compuesto principalmente por vehículos ligeros y agrícolas. Sin embargo, el desgaste debido a factores climáticos y la falta de señalización en tramos con curvas y pendientes ha incrementado el riesgo de accidentes y daños estructurales en la vía.

- Longitud total del tramo: 10.920 km
- Ancho de calzada: 4.50 - 5.00 metros


== Evaluación del estado actual

=== Conservación de las señales verticales

La implementación de señalización vertical en el camino vecinal tiene como finalidad garantizar la seguridad vial de los usuarios, reduciendo el riesgo de accidentes mediante la adecuada advertencia de condiciones geométricas del tramo, como curvas pronunciadas. La vía en mención presenta curvas con radios reducidos y condiciones que limitan la visibilidad, por lo cual es indispensable la colocación de 17 señales preventivas (tipo P-1a y P-1b) ubicadas estratégicamente 30 metros antes de cada curva, conforme a la velocidad operativa del tramo (30 km/h).

Asimismo, se colocará 1 señal informativa al inicio del tramo, orientando a los usuarios sobre la identificación del camino y reforzando el sentido de orientación.

Esta intervención se enmarca en los lineamientos del Manual de Dispositivos de Control del Tránsito Automotor para Calles y Carreteras (MTC) y contribuye directamente a mejorar la seguridad vial y funcionalidad del camino vecinal.
En el estado actual del tramo no cuenta con ninguna señalización vertical.

== Método de intervención propuesto

=== SECCIÓN 801: CONSERVACIÓN DE LAS SEÑALES VERTICALES

Este trabajo Este trabajo consiste en la conservación y/o reposición de señales verticales (preventivas, informativas y reglamentarias), de la vía incluyendo las correspondientes a los puentes, túneles, muros y otros elementos de la misma; con la finalidad de que las señales cumplan adecuadamente con la función para las cuales fueron diseñadas e instaladas. Los trabajos de conservación, consisten en la limpieza, repintado, colocación de elementos deteriorados o faltantes, etc.; en tanto, que la reposición puede ser total o parcial.

Esta actividad incluye la colocación de nuevas señales verticales, en lugares puntuales, a fin de mantener la funcionalidad de la vía en materia de seguridad vial.

La señalización vertical debe cumplir con las normas establecidas en el Manual de Dispositivos de Control de Tránsito para Calles y Carreteras, vigente.
Las Señalizaciones se ubicarán en las siguientes progresivas:

P-1A CURVA PRONUNCIADA A LA DERECHA

- 0+460
- 0+970
- 1+390

P-1B CURVA PRONUNCIADA A LA IZQUIERDA

- 0+520
- 0+910
- 1+460

P-5-2A CURVA EN ‘‘U’’ A LA DERECHA

- 0+780
- 1+640
- 2+470

P-5-2B CURVA EN ‘‘U’’ A LA IZQUIERDA

- 0+900
- 1+580
- 2+560

P-2A CURVA HACIA LA DERECHA

- 3+190

P-39 ANCHO MAXIMO PERMITIDO

- 8+810

P-4B CURVA Y CONTRA-CURVA A LA IZQUIERDA

- 2+180
- 2+300

SEÑAL INFORMATIVA

- 8+770


== Presupuesto y cronograma de ejecución

Para la ejecución MANTENIMIENTO VIAL RUTINARIO DEL CAMINO VECINAL EMP. AR-691 - CALLA CALLA - YURACCANCHA - CUCHUHURI - PALLALLMAYO (KM 11+920) - ACTIVIDAD COMPLEMENTARIA CONSERVACION DE LAS SEÑALES VERTICALES. El presupuesto y las actividades a realizar se resumen en lo siguiente:

#figure(
  image("./images/presupuesto.png", width: 100%),
  caption: "Presupuesto y cronograma de ejecución",
)

El Presupuesto Total es de S/. 14,783.61 SOLES, con un plazo de ejecución de 15 días calendarios.

== Identificación de recursos no utilizados
#figure(image("./images/recursos_no_utilizados.png", width: 100%))

== Conclusiones

La actividad SECCIÓN 801 CONSERVACIÓN DE LAS SEÑALES VERTICALES en las progresivas indicadas son esenciales para mejorar la seguridad y transitabilidad de la carretera afirmada EMP. AR-691 - CALLA CALLA - YURACCANCHA - CUCHUHURI - PALLALLMAYO (KM 11+920). Se recomienda proceder con la ejecución inmediata de los trabajos para evitar mayores deterioros de la vía y reducir el riesgo de accidentes en los tramos identificados.

Así mismo en el documento técnico Capitulo 5 Panel Fotográfico se sustenta con evidencia fotográfica la necesidad de la ejecución de esta actividad SECCIÓN 801 CONSERVACIÓN DE LAS SEÑALES VERTICALES.

El Documento Técnico se realizó de acuerdo a la RESOLUCIÓN DIRECTORAL N°0014-2025-MTC/21, ANEXO N°XI CONTENIDO MÍNIMO PARA DOCUMENTO TÉCNICO DE ACTIVIDADES COMPLEMENTARIAS NO CONTEMPLADAS EN LA INTERVENCIÓN INICIAL DEL MANTENIMIENTO VIAL RUTINARIO

Adjunto Documento Técnico.

#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,



///////////////////////////////////////
///////////////////////////////////////
