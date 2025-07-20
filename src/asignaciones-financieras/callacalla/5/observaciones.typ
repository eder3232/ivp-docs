#import "../../config/styles.typ": style
#show: style

#set text(lang: "es")

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
      [#figure(image("../../../assets/ivp-caylloma.png", width: 60pt), numbering: none)],
    )
  ],
  header-ascent: 0.5cm,
)

#set par(justify: true)

= Observaciones - Callacalla Mayo

== #text(fill: blue, weight: "bold")[Documentación Obligatoria Pendiente]

=== Cuaderno de Mantenimiento
- #text(fill: red, weight: "bold")[FALTA]: No se ha presentado el cuaderno de mantenimiento del mes
- *Requisitos para próxima presentación*:
  - El cuaderno debe estar completo con todas las anotaciones del mes
  - Debe contener la firma del supervisor de mantenimiento en cada anotación
  - Las anotaciones deben ser claras y legibles
  - Se debe incluir el registro diario de las actividades realizadas

#text(fill: orange, weight: "bold")[RECORDATORIO]: El cuaderno de mantenimiento es un documento contractual obligatorio que debe presentarse mensualmente con las firmas correspondientes.

=== Tareo Mensual
- #text(fill: red, weight: "bold")[¡FALTA!]: No se ha presentado el tareo mensual

=== Conteo de Precipitación
- *Problema*: Está mal elaborado, no presenta valores
- Se debe corregir y presentar con los valores correspondientes

== #text(fill: blue, weight: "bold")[Control de Asistencia]

- *Mayo*: Debe figurar que se laboró también los sábados

== #text(fill: blue, weight: "bold")[Cargas de Trabajo]

=== Problemas Generales
- *Problema*: Los valores numéricos no caben en las celdas de Excel, mostrándose como `####` en los documentos impresos
- Se debe verificar que todos los valores numéricos sean visibles en la impresión

=== Actividades Específicas

==== Actividad Limpieza de Cunetas
- Se reporta un valor de 480 en la tercera semana del resumen mensual
- #text(fill: red, weight: "bold")[INCONSISTENCIA]: Este valor no figura en el total mensual
- #text(fill: red, weight: "bold")[FALTA]: No se presenta la carga de trabajo por actividad correspondiente
- *Acciones requeridas*:
  - Incluir el valor en el total del resumen mensual
  - Presentar la carga de trabajo detallada
  - Justificar por qué solo aparece en la tercera semana

==== Actividad MR102 - Bacheo
- Se redujo de 328.00 a 322.90
- *Acciones requeridas*:
  - Modificar las cargas de trabajo por actividad de bacheo
  - Actualizar el cuadro resumen correspondiente

==== Item 4.2 Recursos Utilizados
- #text(fill: red, weight: "bold")[FALTA]: No se presenta la relación del personal
- Se debe incluir el listado completo del personal que laboró durante el mes

== #text(fill: blue, weight: "bold")[Panel Fotográfico]

=== Verificación de Coordenadas GPS
- *Problema crítico de georeferenciación*:
  - #text(fill: red, weight: "bold")[INCONSISTENCIA GRAVE]: Múltiples fotografías presentan coordenadas GPS que están completamente fuera del tramo en mantenimiento
  - Varias fotos tienen coordenadas que no corresponden al corredor vial

- #text(fill: red, weight: "bold")[REQUERIDO]:
  - Todas las fotografías deben tener coordenadas GPS que correspondan al tramo Callacalla
  - Las coordenadas deben estar dentro del rango del corredor vial en mantenimiento
  - Se debe verificar la configuración del GPS en los dispositivos de captura

#text(fill: orange, weight: "bold")[FORMATO OBLIGATORIO]: Debido a observaciones previas sobre problemas con coordenadas y fechas, se elaboró un formato específico que fue enviado al contratista. El panel fotográfico #text(fill: red, weight: "bold")[DEBE] presentarse estrictamente en el formato establecido y enviado por el supervisor.

=== Organización del Panel Fotográfico
- *Problema identificado*: Las fotografías están desordenadas y no se distinguen claramente las semanas de ejecución
- *Solución requerida*:
  - Organizar las fotografías por semanas de ejecución
  - Incluir separadores claros entre cada semana
  - Si una actividad se ejecutó en múltiples semanas, debe presentar una foto por cada semana con su respectivo separador

#v(0.5cm)

// #text(style: "italic")[Fecha de revisión: 11/07/2025]
// #text(style: "italic")[Revisado por: Eddy Eder Sucapuca Cruz]
