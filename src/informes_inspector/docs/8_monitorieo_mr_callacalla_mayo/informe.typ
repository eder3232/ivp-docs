#import "@preview/cades:0.3.0": qr-code
#import "@preview/numbly:0.1.0": numbly

#import "utils/styles_local.typ": local_style
#show: local_style

#import "utils/header.typ" as header

// Funciones auxiliares
#let padDigits = (num, width) => {
  let s = str(num)
  let need = width - s.len()
  let zeros = if need > 0 { "0" * need } else { "" }
  zeros + s
};
//

#let numero_valorizacion = 2
#let mes_valorizacion = "Mayo"
#let anio_valorizacion = 2025

//////////////////////////////////
//////////////////////////////////

#let data = json("./data/json/data.json")

#let nombre_contratista = data.at(2).value.at(2).value

#let numero_contrato = data.at(2).value.at(1).value.numero

#let fecha_firma_contrato_dia = data.at(2).value.at(1).value.fecha_firma.day
#let fecha_firma_contrato_mes = data.at(2).value.at(1).value.fecha_firma.month
#let fecha_firma_contrato_anio = data.at(2).value.at(1).value.fecha_firma.year

#let fecha_entrega_terreno_dia = data.at(2).value.at(12).value.day
#let fecha_entrega_terreno_mes = data.at(2).value.at(12).value.month
#let fecha_entrega_terreno_anio = data.at(2).value.at(12).value.year

#let convenio = data.at(2).value.at(0).value.numero
#let tramo = data.at(0).value.at(1).value
#let ruta = data.at(0).value.at(0).value

#let descripcion_tramo_ruta = ", ruta: " + ruta + ", tramo: " + tramo


#let firma_contrato_full_date = (
  padDigits(fecha_firma_contrato_dia, 2)
    + "/"
    + padDigits(fecha_firma_contrato_mes, 2)
    + "/"
    + str(fecha_firma_contrato_anio)
)

#let entrega_terreno_full_date = (
  padDigits(fecha_entrega_terreno_dia, 2)
    + "/"
    + padDigits(fecha_entrega_terreno_mes, 2)
    + "/"
    + str(fecha_entrega_terreno_anio)
)
//////////////////////////////////////

#header

// INICIO DEL CUERPO DEL INFORME

Mediante la presente me dirijo a usted para saludarlo y a la vez derivarle el Informe de Inspección del Servicio de Mantenimiento Vial Rutinario de los Caminos Vecinales #descripcion_tramo_ruta, correspondiente al mes de #mes_valorizacion #anio_valorizacion, al respecto le informo lo siguiente:

== Antecedentes:

+ Convenio número #convenio, Convenio de Gestión para la Ejecución de Mantenimiento Rutinario de Vías Vecinales entre Provias Descentralizado y la Municipalidad Provincial de Caylloma.

+ Con fecha de firma de contrato N.º #numero_contrato, firmado el día #firma_contrato_full_date, entre el Instituto Vial Provincial Caylloma y el postor ganador del proceso de selección #nombre_contratista.

+ Con fecha #entrega_terreno_full_date se realiza la entrega del terreno al contratista para la ejecución de los trabajos de mantenimiento vial rutinario del camino vecinal #descripcion_tramo_ruta, a la empresa #nombre_contratista.

== Análisis

En cumplimiento de las funciones de inspección de la ejecución del servicio de mantenimiento vial rutinario, se realizó una visita de campo para verificar la correcta realización de las actividades programadas. Durante la inspección se contrastó la información registrada en el informe mensual con las condiciones observadas en el lugar, detallándose a continuación los aspectos verificados.


+ Generalidades
  + Datos Generales de la Micro Empresa: *Si presentó*
  + Memoria Descriptiva de los trabajos ejecutados: *Si presentó*

+ Reportes de trabajo
  + Cargas de Trabajo y Resumen (Formato N° 01 y 02) con su respectivo sustento.
    + Formato N°01 (Reporte de Cargas de Trabajo por Actividad): *Si presentó*
    + Formato N°02 ( (Resumen Mensual de Cargas de Trabajo): *Si presentó*

+ Programación de Trabajo Mensual
  + Programación Real Ejecutado (Formato N°03.01): *Si presentó*
  + Programación del Mes (Formato N°03.02): *Si presentó*

+ Recursos Utilizados
  + Relación de personal:*Si presentó*
  + Herramientas manuales: *Si presentó*


+ Conclusiones y Recomendaciones
  + Conclusiones: *Si presentó*
  + Recomendaciones: *Si presentó*

+ Panel Fotográfico
  (Fotografías de las actividades ejecutadas, durante el mes, mínimo 4 fotografías por km. Que describan el antes, durante y después de las actividades, y que incluya al personal debidamente uniformados EPP. Asimismo, las fotografías deberán ser fechadas y georreferenciadas mostrando a la cantidad de trabajadores según cálculo de la Gestión de Mantenimiento): *Si presentó*

+ Copias del Cuaderno de Mantenimiento.*Si presentó*
+ Conteo de Tráfico (Ficha N°01)*Si presentó*
+ Conteo de Precipitación (Ficha N°02)*Si presentó*

+ Anexos
  + Factura *Si presentó*
  + Relación de Personal; Rotativo, Socios o trabajador *Si presentó*
  + Tareo mensual con respectiva copia de DNI. *Si presentó*
  + Planilla de pago mensual de personal del mes anterior, que incluya declaración jurada de pago de cada trabajador. *Si presentó*
  + Copia de acta de entrega de terreno. *Si presentó*
  + Copia de Contrato y contrato de Consorcio en caso corresponda. *No corresponde*
  + Carta de Autorización de abono (CCI). *Si presentó*

== Conclusiones

+ El servicio de mantenimiento vial rutinario del camino vecinal #descripcion_tramo_ruta, se comunica que no se reportaron observaciones en campo y el informe mensual presentado por la empresa #nombre_contratista, se encuentra conforme a lo establecido en el contrato de ejecución del servicio de mantenimiento vial rutinario.

+ Se recomienda se continue con el trámite administrativo para realizar el pago correspondiente por el servicio prestado del contratista.

Adjunto:

+ Formato de evlauación del camino vecinal
+ Ficha de monitoreo y Seguimiento.

#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,
\
\
\
\
\

// ---------------------------------

#align(center)[
  #line(length: 60%)
  Bach. Ing. Eddy Eder Sucapuca Cruz

  Inspector de mantenimiento

  IVP Caylloma
]

///////////////////////////////////////
///////////////////////////////////////
