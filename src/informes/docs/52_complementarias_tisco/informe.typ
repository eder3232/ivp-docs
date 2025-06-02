#import "@preview/cades:0.3.0": qr-code

#set text(lang: "es")
#import "../../config/styles.typ": style
#show: style

#let entidad = json("../../../data/entidad.json")
#let documento = json("../../config/document.json")
#let personal = json("../../../data/personal.json")

#let entidad_siglas = entidad.siglas

//Documentos locales


//generales
#let numero_documento = 52
#let date_day = 28
#let date_month = 5
#let date_year = 2025
#let asunto = "METAS, ACTIVIDADES Y UBICACIÓN DE LAS ACTIVIDADES COMPLEMENTARIAS PARA EL \"MANTENIMIENTO VIAL RUTINARIO DEL CAMINO VECINAL EMP. PE-34 E - TISCO (18+160) - ACTIVIDAD COMPLEMENTARIA REPARACIÓN DE BADENES\""

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
      [#figure(image("../../../assets/ivp-jo.png", width: 60pt))],
      [#text(
          size: 14pt,
        )[Instituto Vial Provincial Caylloma \ #text(size: 9pt)[Año de la Recuperación y Consolidación de la Economía Peruana]]],
      [#figure(image("../../../assets/mpcaylloma.jpeg", width: 60pt))],
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
Mediante la presente me dirijo a usted para saludarlo y a la vez derivarle el Documento Técnico de la Actividad Complementaria para el Camino Vecinal EMP. PE-34 E - TISCO, Distrito de Tisco, al respecto informe lo siguiente:

== Introducción

El mantenimiento rutinario vial es una actividad fundamental para conservar en condiciones óptimas la infraestructura vial, garantizando la transitabilidad y seguridad de los usuarios, especialmente en zonas rurales donde los caminos vecinales constituyen la principal vía de acceso a centros poblados, servicios básicos y mercados locales.

En ese contexto, el presente informe se elabora en el marco del expediente técnico denominado "MANTENIMIENTO VIAL RUTINARIO DEL CAMINO VECINAL EMP. PE-34 E - TISCO (18+160) - ACTIVIDAD COMPLEMENTARIA REPARACIÓN DE BADENES", cuyo objetivo es ejecutar la reparación del Badenes en la progresivas 1+100 Km y 5+700 Km, que son estructuras fundamentales para el adecuado drenaje superficial y la protección de la plataforma vial.

Este documento detalla los antecedentes, justificación, objetivos, alcances y lineamientos técnicos de las intervenciones previstas, buscando contribuir a la mejora de la conectividad y el desarrollo socioeconómico de las comunidades beneficiarias ubicadas a lo largo del eje vial intervenido.


== Descripción del camino vecinal

La carretera EMP. PE-34E - TISCO es una vía afirmada de acceso rural que conecta varias comunidades locales. Tiene un tráfico moderado, compuesto principalmente por vehículos ligeros y agrícolas. Sin embargo, el desgaste debido a factores climáticos y la falta de señalización en tramos con curvas y pendientes ha incrementado el riesgo de accidentes y daños estructurales en la vía.

- Longitud total del tramo: 18.160 km
- Ancho de calzada: 4.50 - 5.00 metros


== Evaluación del estado actual

=== REPARACIÓN DEL BADÉN EN LOS KILÓMETROS 1+100 KM Y 5+700

El badén ubicado en el kilómetro 3+085 presenta un deterioro severo debido a la acumulación de agua y la erosión en su estructura. Esto afecta tanto la funcionalidad del drenaje como la seguridad de los vehículos que transitan por la zona, exponiéndolos a daños mecánicos y deslizamientos.
Problemas identificados:
- Erosión del material estructural del badén, creando huecos y desniveles peligrosos.
- Obstrucción parcial del drenaje, impidiendo el flujo adecuado de las aguas pluviales.
- Riesgo de colapso del badén, comprometiendo la circulación vehicular.


== Método de intervención propuesto

=== SECCIÓN 637: REPARACIÓN DE BADENES

La reparación de los badenes en la carretera AR-688 se enfocará en los siguientes aspectos:
Limpieza y desobstrucción: Remoción de sedimentos y escombros que bloquean el paso del agua en los badenes.
Reperfilado y reconstrucción: Restauración de las áreas erosionadas, asegurando que los badenes recuperen su capacidad de canalizar agua correctamente. Se utilizarán materiales locales compatibles con la afirmación de la vía.

Compactación del material: Aplicación de técnicas de compactación adecuadas para evitar futuros asentamientos, especialmente en las zonas afectadas por el tránsito pesado.

Revestimiento o estabilización (opcional): En zonas críticas se considerará el uso de materiales estabilizantes o geotextiles para mejorar la resistencia del badén frente a la erosión hídrica.

BADEN 1
- Progresiva: 5+700
- Área del Baden: 67.15 m2
- Área deteriorada: 67.15 m2
- Estado: Deteriorado al 100%
- Área a reparar: 67.15 m2

#figure(
  image("./images/baden1.png", width: 100%),
  caption: "Baden 1",
)

#figure(
  image("./images/baden2.png", width: 100%),
  caption: "Baden 1",
)

BADEN 2
- Progresiva: 1+100
- Área del Baden: 60.16 m2
- Área deteriorada: 60.16 m2
- Estado: Deteriorado al 100%
- Área a reparar: 60.16 m2

#figure(
  image("./images/baden3.png", width: 100%),
  caption: "Baden 2",
)

#figure(
  image("./images/baden4.png", width: 100%),
  caption: "Baden 2",
)


== Presupuesto y cronograma de ejecución

Para la ejecución MANTENIMIENTO VIAL RUTINARIO DEL CAMINO VECINAL EMP. PE-34 E - TISCO (18+160) - ACTIVIDAD COMPLEMENTARIA REPARACIÓN DE BADENES. El presupuesto y las actividades a realizar se resumen en lo siguiente:

#figure(
  image("./images/presupuesto.png", width: 100%),
  caption: "Presupuesto y cronograma de ejecución",
)

El Presupuesto Total es de S/. 32,716.17 SOLES, con un plazo de ejecución de 15 días calendarios.

== Identificación de recursos no utilizados
#figure(image("./images/recursos_no_utilizados.png", width: 100%))

== Conclusiones

Las actividades de reparación de los badenes en los kilómetros 1+100 Km y 5+700 Km son esenciales para mejorar la seguridad y transitabilidad de la carretera afirmada EMP. PE-34 E - TISCO. Se recomienda proceder con la ejecución inmediata de los trabajos para evitar mayores deterioros de la vía y reducir el riesgo de accidentes en los tramos identificados.

Así mismo en el documento técnico Capitulo 5 Panel Fotográfico se sustenta con evidencia fotográfica la necesidad de la ejecución de esta actividad SECCIÓN 637 REPARACIÓN DE BADENES.

El Documento Técnico se realizó de acuerdo a la RESOLUCIÓN DIRECTORAL N°0014-2025-MTC/21, ANEXO N°XI CONTENIDO MÍNIMO PARA DOCUMENTO TÉCNICO DE ACTIVIDADES COMPLEMENTARIAS NO CONTEMPLADAS EN LA INTERVENCIÓN INICIAL DEL MANTENIMIENTO RUTINARIO

Adjunto Documento Técnico.

#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,



///////////////////////////////////////
///////////////////////////////////////
