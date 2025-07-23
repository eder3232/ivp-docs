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

= Observaciones - Ccanaseta Mayo

== #text(fill: blue, weight: "bold")[Documentación Obligatoria Pendiente]

=== Cuaderno de Mantenimiento
- #text(fill: red, weight: "bold")[OBSERVACIÓN]: El cuaderno de mantenimiento presentado no cuenta con la firma del supervisor
- *Requisitos para subsanación*:
  - La copia del cuaderno presentada debe estar firmada por el supervisor de mantenimiento en cada anotación
  - Las anotaciones deben mantenerse claras y legibles
  - El registro diario de actividades debe estar completo

#text(fill: orange, weight: "bold")[RECORDATORIO]: El cuaderno de mantenimiento es un documento contractual obligatorio que debe presentarse mensualmente con todas las firmas correspondientes, incluyendo la del supervisor.

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

==== Actividades Duplicadas en Resumen
- #text(fill: red, weight: "bold")[INCONSISTENCIA]: Se identificaron actividades duplicadas en el resumen mensual:
  - "Roce y limpieza" aparece dos veces con diferentes valores
  - "Limpieza de calzada" también está duplicada
- *Acciones requeridas*:
  - Revisar y corregir las actividades duplicadas
  - Verificar que cada actividad aparezca una sola vez con su valor correcto
  - Actualizar el resumen mensual consolidando los valores de las actividades duplicadas

#text(fill: orange, weight: "bold")[IMPORTANTE]: La consistencia del resumen mensual es crítica para el control y seguimiento de las actividades ejecutadas. No pueden existir duplicidades que generen confusión en los reportes.

==== Recomendación de Orden para Actividades GEMA
- Para una mejor organización y seguimiento, se recomienda presentar las actividades en el siguiente orden estandarizado:

*CONSERVACIÓN DE CALZADA*
- MR-101 Limpieza de Calzada
- MR-102 Bacheo
- MR-103 Desquinche
- MR-104 Remoción de Derrumbes

// LIMPIEZA DE OBRAS DE DRENAJE
*LIMPIEZA DE OBRAS DE DRENAJE*
- MR-201 Limpieza de Cunetas
- MR-202 Limpieza de Alcantarilla
- MR-203 Limpieza de Baden
- MR-204 Limpieza de Zanjas de Coronación
- MR-205 Limpieza de Pontones
- MR-206 Encauzamiento de Pequeños Cursos de Agua

// CONTROL DE VEGETACIÓN
*CONTROL DE VEGETACIÓN*
- MR-301 Roce y Limpieza

// SEGURIDAD VIAL
*SEGURIDAD VIAL*
- MR-401 Conservación de Señales

// REFORESTACIÓN
*REFORESTACIÓN*
- MR-501 Reforestación

// VIGILANCIA Y CONTROL VIAL
*VIGILANCIA Y CONTROL VIAL*
- MR-601 Vigilancia y Control

// REPARACIÓN
*REPARACIÓN*
- MR-701 Reparación de Muros Secos
- MR-702 Reparación de Pontones

#text(fill: orange, weight: "bold")[NOTA]: Esta organización facilitará la revisión y control de las actividades ejecutadas, permitiendo un mejor seguimiento del mantenimiento rutinario.

#text(fill: blue, weight: "bold")[RECOMENDACIÓN ADICIONAL]:
Se sugiere que en el resumen mensual de trabajo *no se incluyan todas las actividades del catálogo GEMA*, sino únicamente aquellas que están contempladas en el contrato o en los términos de referencia de la contratación. Esto permitirá una mayor claridad y precisión en la presentación y control de las actividades ejecutadas.

==== Actividad MR102 - Bacheo
- Se redujo de 229.56 a 223.09
- *Acciones requeridas*:
  - Modificar las cargas de trabajo por actividad de bacheo
  - Actualizar el cuadro resumen correspondiente

== #text(fill: blue, weight: "bold")[Panel Fotográfico]

=== Organización del Panel Fotográfico
- *Problema identificado*: Las fotografías están desordenadas y no se distinguen claramente las semanas de ejecución
- *Solución requerida*:
  - Organizar las fotografías por semanas de ejecución
  - Incluir separadores claros entre cada semana
  - Si una actividad se ejecutó en múltiples semanas, debe presentar una foto por cada semana con su respectivo separador

#v(0.5cm)

// #text(style: "italic")[Fecha de revisión: 11/07/2025]
// #text(style: "italic")[Revisado por: Eddy Eder Sucapuca Cruz]
