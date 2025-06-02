#import "@preview/cades:0.3.0": qr-code

#import "../../config/styles.typ": style
#show: style

#let entidad = json("../../../data/entidad.json")
#let documento = json("../../config/document.json")
#let personal = json("../../../data/personal.json")

#let entidad_siglas = entidad.siglas

//Documentos locales


//generales
#let numero_documento = 51
#let date_day = 28
#let date_month = 5
#let date_year = 2025
#let asunto = "METAS, ACTIVIDADES Y UBICACIÓN DE LAS ACTIVIDADES COMPLEMENTARIAS PARA \"EL MANTENIMIENTO VIAL RUTINARIO DEL CAMINO VECINAL EMP. AR-111 (NUEVO SIBAYO) - TUTI - EMP. AR-681 (DV. CHIVAY) (KM 32+252) - ACTIVIDAD COMPLEMENTARIA DE SELLADO DE FISURAS Y GRIETAS EN CALZADA Y BERMA\""

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
Mediante la presente me dirijo a usted para saludarlo y a la vez derivarle el Documento Técnico de la Actividad Complementaria para el Camino Vecinal Emp. AR-111 (Nuevo Sibayo) - Tuti - Emp. AR-681 (Dv. Chivay) (KM 32+252), Distrito de Chivay, Tuti y Sibayo, al respecto informe lo siguiente:

== Introducción

El presente informe técnico tiene como objetivo priorizar la ejecución de la actividad SECCIÓN 405 SELLADO DE FISURAS Y GRIETAS EN LA CALZADA Y BERMAS del CAPÍTULO 400 CONSERVACIÓN DE PAVIMENTO FLEXIBLE EN CALZADA Y BERMA en camino vecinal AR-683. Este tipo de intervención es crucial para mantener la durabilidad y seguridad del pavimento, prolongando su vida útil y evitando el deterioro acelerado causado por la infiltración de agua y otros agentes externos.

La intervención de sellado es considerada de alta prioridad debido a que el deterioro de las fisuras y grietas puede generar daños estructurales más severos si no se atiende oportunamente. Este informe detalla las características de las fisuras observadas, la metodología de reparación propuesta, y la programación para la ejecución de la actividad.

== Descripción del camino vecinal

El camino vecinal AR-683 "EMP. AR-111 (NUEVO SIBAYO) - TUTI - EMP. AR-681 (DV. CHIVAY) (KM 32+252)" es una vía de tipo asfaltado que conecta varias localidades rurales. Posee un tráfico predominantemente ligero, aunque está sometido a un incremento estacional de vehículos pesados debido a la actividad agrícola de la zona. El tramo afectado por fisuras y grietas comprende aproximadamente 12.50 km, con mayor incidencia en las zonas cercanas a intersecciones y zonas de pendiente entre las progresivas 8+500 - 10+250.

- Longitud total del tramo afectado: 12.50 km

- Ancho de calzada: 6.00 metros

- Ancho de bermas: 1.00 metros

== Evaluación del estado actual

Tipos de fisuras encontradas:

- Fisuras longitudinales: A lo largo del eje de la carretera, posiblemente causadas por la fatiga del material.
- Fisuras transversales: Causadas por contracción térmica o asentamientos diferenciales.
- Fisuras en bloque: Generadas por envejecimiento del asfalto y contracción debido a ciclos térmicos.
- Fisuras de borde: Localizadas principalmente en las bermas, relacionadas con el drenaje deficiente y la erosión.

Las fisuras se encuentran en los rangos de hasta 6 mm, de 6 mm a 20 mm y en su mayor parte entre 20 mm a 70 mm.
La grieta entre 20 mm a 70 mm se utilizará como sellador una mezcla de arena emulsión asfáltica tipo CRS-1 o CRS-2 con una dosis no inferior que 18% de emulsión. También se podrán emplear emulsiones modificadas con elastómeros o referentemente emplear como selladores, asfaltos modificados con polímeros y con caucho o sellantes elastómeros. Esto según el manual de Carreteras: Mantenimiento o Conservación Vial SECCIÓN 405 SELLADO DE FISURAS Y GRIETAS EN CALZADA Y BERMAS


== Método de intervención propuesto

=== SECCIÓN 405 SELLADO DE FISURAS Y GRIETAS EN CALZADA Y BERMAS

El sellado de fisuras consiste en la aplicación de un material sellante en las fisuras identificadas para evitar la infiltración de agua y materiales sueltos que puedan acelerar el deterioro. Se recomienda el uso de sellantes elastoméricos o bituminosos modificados con polímeros que proporcionen flexibilidad y durabilidad.

Pasos del procedimiento:

+ Limpieza de fisuras: Utilizando aire comprimido o cepillos mecánicos para remover polvo, suciedad y materiales sueltos.
+ Calentamiento (si es necesario): En casos donde la fisura presente humedad, se recomienda el uso de un equipo de calor para asegurar una adecuada adhesión del sellante.
+ Relleno de fisuras: Aplicación del material sellante con un aplicador adecuado para asegurar la completa penetración y adhesión en la fisura.
+ Nivelación y acabado: Después de la aplicación, se debe asegurar que el sellante quede nivelado con la superficie de la carretera.

== Presupuesto y cronograma de ejecución

Para la ejecución “MANTENIMIENTO VIAL RUTINARIO DEL CAMINO VECINAL EMP. AR-111 (NUEVO SIBAYO) - TUTI - EMP. AR-681 (DV. CHIVAY) (KM 32+252) - ACTIVIDAD COMPLEMENTARIA DE SELLADO DE FISURAS Y GRIETAS EN CALZADA Y BERMA’’. El presupuesto y las actividades a realizar se resumen en lo siguiente:

#figure(
  image("./images/presupuesto.png", width: 100%),
  caption: "Presupuesto y cronograma de ejecución",
)

El Presupuesto Total es de S/. 41,282.28 SOLES, con un plazo de ejecución de 15 días calendarios.

== Identificación de recursos no utilizados
#figure(image("./images/recursos_no_utilizados.png", width: 100%))

== Conclusiones

El sellado de fisuras y grietas en la carretera AR-683 es una actividad prioritaria que contribuirá a prolongar la vida útil del pavimento, prevenir el desarrollo de deterioros mayores, y garantizar la seguridad de los usuarios de la vía. La intervención debe ser ejecutada de manera inmediata y conforme al cronograma planteado, con especial énfasis en la correcta aplicación de los materiales sellantes.

Así mismo en el documento técnico Capitulo 5 Panel Fotográfico se sustenta con evidencia fotográfica la necesidad de la ejecución de esta actividad SECCIÓN 405 SELLADO DE FISURAS Y GRIETAS EN LA CALZADA Y BERMAS.

El Documento Técnico se realizó de acuerdo a la RESOLUCIÓN DIRECTORAL N°0014-2025-MTC/21, ANEXO N°XI CONTENIDO MÍNIMO PARA DOCUMENTO TÉCNICO DE ACTIVIDADES COMPLEMENTARIAS NO CONTEMPLADAS EN LA INTERVENCIÓN INICIAL DEL MANTENIMIENTO VIAL RUTINARIO.

Adjunto Documento Técnico.

#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,



///////////////////////////////////////
///////////////////////////////////////
