#import "@preview/cades:0.3.0": qr-code

#import "../../config/styles.typ": style
#show: style

#let entidad = json("../../../data/entidad.json")
#let documento = json("../../config/document.json")
#let personal = json("../../../data/personal.json")

#let entidad_siglas = entidad.siglas

//Documentos locales
#let data = json("./data.json")
// Valores a cambiar para cada documento

//locales
#let numero_valorizacion = 1
//generales
#let numero_documento = 45
#let date_day = 8
#let date_month = 5
#let date_year = 2025
#let asunto = (
  "Conformidad del servicio"
    + ": "
    + "MANTENIMIENTO VIAL RUTINARIO DEL CAMINO VECINAL EMP. AR-706 - MISANAYOC, DISTRITO DE HUANCA, PROVINCIA DE CAYLLOMA, REGIÓN AREQUIPA"
)

#let referencia = (
  "Informe N.º 004-2025-IVP-CAYLLOMA-INS",
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
  [Referencia], [:], [
    #referencia.at(0)
  ],
)

#line(
  length: 100%,
  stroke: (thickness: 2pt),
)


///////////////////////////////////////
///////////////////////////////////////
Me dirijo a usted, para hacer de conocimiento que este despacho ha efectuado la revisión de los documentos presentados por la Empresa #data.at(2).value.at(2).value
quien realizo las actividades de mantenimiento vial rutinario del camino vecinal #data.at(0).value.at(1).value, según el contrato indicado en la referencia, correspondiente al mes de correspondiente al mes de Abril de 2025
(Valorización N°#numero_valorizacion).

Para la conformidad, se ha verificado que el informe cumpla con los requisitos mínimos de
presentación.

#import "@preview/numbly:0.1.0": numbly

// #set enum(full:true, numbering: numbly("{1:1.1}.", "{2:1.}", "{3:a})","({4})" ))
#set enum(full: true, numbering: numbly("{1:1.1}."))

+ Generalidades
  + Datos Generales de la Micro Empresa
  + Memoria Descriptiva de los trabajos ejecutados

+ Reportes de trabajo
  + Cargas de Trabajo y Resumen (Formato N° 01 y 02) con su respectivo sustento.

+ Programación de Trabajo Mensual
  + Programación Real Ejecutado (Formato N°03.01).
  + Programación del Mes (Formato N°03.02).
  + Programación del siguiente mes (Formato N°03.03).

+ Recursos Utilizados
  + Recursos Humanos.
  + Herramientas y Materiales
  + Equipos de corresponder.

+ Conclusiones y Recomendaciones
  + Conclusiones
  + Recomendaciones

+ Panel Fotográfico

  (Fotografías de las actividades ejecutadas, durante el mes, mínimo 4 fotografías por km. Que describan el antes, durante y después de las actividades, y que incluya al personal debidamente uniformados EPP. Asimismo, las fotografías deberán ser fechadas y georreferenciadas mostrando a la cantidad de trabajadores según cálculo de la Gestión de Mantenimiento).

+ Copias del Cuaderno de Mantenimiento.
+ Conteo de Tráfico (Ficha N°01)
+ Conteo de Precipitación (Ficha N°02)
+ Anexos
  + Factura
  + Relación de Personal; según coordinación con el responsable del área usuaria deber ser rotativo y buscando ampliar oportunidades de trabajo en los centros poblados de la intervención.
  + Tareo mensual de personal con respectiva copia de DNI.
  + Planilla de pago mensual de personal del mes anterior, que incluya declaración jurada de pago de cada trabajador.
  + Copia de acta de entrega de terreno.
  + Copia de Contrato y contrato de Consorcio en caso corresponda.
  + Carta de Autorización de abono (CCI).

Por lo tanto, se da la *Conformidad del servicio* de acuerdo al cuadro de Valorización siguiente:

#figure(image("./images/valorizacion.png", width: 100%))

Adjunto:

- Informe del inspector: #referencia.at(0)

#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,



///////////////////////////////////////
///////////////////////////////////////
