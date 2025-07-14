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

= Observaciones - Cabanaconde Mayo

== #text(fill: blue, weight: "bold")[Control de Asistencia]

- *Mayo*: Debe figurar que se laboró también los sábados

== #text(fill: blue, weight: "bold")[Cargas de Trabajo]

- *Problema*: Los valores numéricos no caben en las celdas de Excel, mostrándose como `####` en los documentos impresos
- *Solución*: Ajustar el ancho de las columnas o el formato de las celdas para que los números se muestren completamente
- *Actividad MR102*: Se redujo de 245.04 a 240.019
  - Se debe modificar las cargas de trabajo por actividad de bacheo
  - Actualizar el cuadro resumen correspondiente
  - Verificar que todos los valores numéricos sean visibles en la impresión

== #text(fill: blue, weight: "bold")[Panel Fotográfico]

=== Verificación de Progresivas

- *Limpieza de badén*:
  - #text(fill: red, weight: "bold")[✗] Progresiva actual no corresponde
  - #text(fill: green, weight: "bold")[✓] Debería ser aproximadamente 470
- *Conservación de señales*:
  - #text(fill: red, weight: "bold")[✗] Progresiva actual no corresponde
  - #text(fill: green, weight: "bold")[✓] Debería ser aproximadamente 2800

#text(fill: red, weight: "bold")[PROBLEMA CRÍTICO]: Las progresivas que figuran en el panel fotográfico no corresponden a las coordenadas GPS de las fotografías georeferenciadas.

*Observación específica*:
- Se verificó que las coordenadas de las imágenes georeferenciadas no coinciden con las progresivas documentadas
- Por ejemplo: el documento indica progresiva 0+000, pero las coordenadas GPS de la fotografía corresponden a otra progresiva
- #text(fill: red, weight: "bold")[REQUERIDO]: Las progresivas documentadas deben guardar correlación exacta con las coordenadas GPS de las fotografías

#text(fill: orange, weight: "bold")[FORMATO OBLIGATORIO]: Debido a observaciones previas sobre problemas con coordenadas y fechas, se elaboró un formato específico que fue enviado al contratista. El panel fotográfico #text(fill: red, weight: "bold")[DEBE] presentarse estrictamente en el formato establecido y enviado por el supervisor.

=== Organización del Panel Fotográfico

*Problema identificado*: Las fotografías están desordenadas y no se distinguen claramente las semanas de ejecución.

*Solución requerida*:
- Organizar las fotografías por semanas de ejecución
- Incluir separadores claros entre cada semana
- Si una actividad se ejecutó en múltiples semanas, debe presentar una foto por cada semana con su respectivo separador

*Formato sugerido*:

=== Problemas Identificados

- *Fotografía duplicada*: Limpieza de calzada

== #text(fill: orange, weight: "bold")[Documentación Pendiente]

- *Conteo de precipitación*: Está mal elaborado, no presenta valores.
- *Tareo mensual*: #text(fill: red, weight: "bold")[¡FALTA!]

#v(0.5cm)

#text(style: "italic")[Fecha de revisión: 11/07/2025]
#text(style: "italic")[Revisado por: Eddy Eder Sucapuca Cruz]
