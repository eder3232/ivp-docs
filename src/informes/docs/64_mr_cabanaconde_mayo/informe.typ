#import "@preview/cades:0.3.0": qr-code
#import "@preview/numbly:0.1.0": numbly

#import "utils/styles_local.typ": local_style
#show: local_style

#import "utils/header.typ" as header

#header
// INICIO DEL CUERPO DEL INFORME

#let data = json("./data/json/data.json")
#let numero_valorizacion = 2
#let mes_valorizacion = "Mayo"

///////////////////////////////////////
///////////////////////////////////////
Me dirijo a usted, para hacer de conocimiento que este despacho ha efectuado la revisión de los documentos presentados por la Empresa #data.at(2).value.at(2).value
quien realizo las actividades de mantenimiento vial rutinario del camino vecinal #data.at(0).value.at(1).value, según el contrato indicado en la referencia, correspondiente al mes de #mes_valorizacion de 2025
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

#figure(image("./data/images/valorizacion.png", width: 100%))

Adjunto:

- Informe del inspector

#align(left)[
  Sin otro particular, es cuanto puedo informar para su conocimiento y fines pertinentes.
]


Atentamente,


// FIN DEL CUERPO DEL INFORME
// FIN DEL CUERPO DEL INFORME
