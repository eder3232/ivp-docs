#import "../../config/styles.typ": style
#show: style

#set text(lang: "es")

#let data = json("./data.json")

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

#let title-case(string) = {
  return string.replace(
    regex("[A-Za-z]+('[A-Za-z]+)?"),
    word => upper(word.text.first()) + lower(word.text.slice(1)),
  )
}


= Anexo III

Ficha Técnica de Monitoreo y Seguimiento Mensual

*Periodo:*

Desde:
Dia: #data.at(2).value.at(13).value.day -
Mes: #data.at(2).value.at(13).value.month -
Año: #data.at(2).value.at(13).value.year

Hasta:
Dia: 30 -
Mes: 4 -
Año: 2025

Fecha: 05/05/2025

== Datos del Mantenimiento Periódico / Rutinario

=== Código de Ruta

#data.at(0).value.at(0).value

=== Nombre del Tramo

#data.at(0).value.at(1).value

=== Tipología

Tipo I: #data.at(0).value.at(2).value.tipo_I Km

Tipo II: #data.at(0).value.at(2).value.tipo_II Km

Tipo III: #data.at(0).value.at(2).value.tipo_III Km

=== Longitud del tramo

#data.at(0).value.at(3).value metros

=== Nivel de Servicio

#data.at(0).value.at(4).value

=== Localidades

#for localidad in data.at(0).value.at(5).value [
  - #localidad
]

=== Distritos

#for distrito in data.at(0).value.at(6).value [
  - #distrito \
]

=== Provincia
#data.at(0).value.at(7).value

=== Departamento

#data.at(0).value.at(8).value

=== Región Natural


#for value in data.at(0).value.at(9).value [
  - #title-case(value) \
]

== Características Técnicas

=== Velocidad directriz

#if (data.at(1).value.at(0).value.aplicable) [
  #data.at(1).value.at(0).value.value
  #data.at(1).value.at(0).value.unidad
] else [
  #data.at(1).value.at(0).value.label
]


=== Tipo de Superficie de Rodadura

#if (data.at(1).value.at(1).value.aplicable) [
  #data.at(1).value.at(1).value.value
] else [
  #data.at(1).value.at(1).value.label
]

=== Ancho de la calzada

#if (data.at(1).value.at(2).value.aplicable) [
  #data.at(1).value.at(2).value.value
  #data.at(1).value.at(2).value.unidad
] else [
  #data.at(1).value.at(2).value.label
]

=== Sobre anchos

#if (data.at(1).value.at(3).value.aplicable) [
  #data.at(1).value.at(3).value.value
  #data.at(1).value.at(3).value.unidad
] else [
  #data.at(1).value.at(3).value.label
]

=== Radio mínimo normal

#if (data.at(1).value.at(4).value.aplicable) [
  #data.at(1).value.at(4).value.value
  #data.at(1).value.at(4).value.unidad
] else [
  #data.at(1).value.at(4).value.label
]

=== Radio mínimo excepcional

#if (data.at(1).value.at(5).value.aplicable) [
  #data.at(1).value.at(5).value.value
  #data.at(1).value.at(5).value.unidad
] else [
  #data.at(1).value.at(5).value.label
]

=== Pendiente máxima

#if (data.at(1).value.at(6).value.aplicable) [
  #data.at(1).value.at(6).value.value
  #data.at(1).value.at(6).value.unidad
] else [
  #data.at(1).value.at(6).value.label
]

=== Pendiente mínima

#if (data.at(1).value.at(7).value.aplicable) [
  #data.at(1).value.at(7).value.value
  #data.at(1).value.at(7).value.unidad
] else [
  #data.at(1).value.at(7).value.label
]

=== Pendiente máxima excepcional

#if (data.at(1).value.at(8).value.aplicable) [
  #data.at(1).value.at(8).value.value
  #data.at(1).value.at(8).value.unidad
] else [
  #data.at(1).value.at(8).value.label
]

=== Bombeo

#if (data.at(1).value.at(9).value.aplicable) [
  #data.at(1).value.at(9).value.value
] else [
  #data.at(1).value.at(9).value.label
]

=== Peralte

#if (data.at(1).value.at(10).value.aplicable) [
  #data.at(1).value.at(10).value.value
  #data.at(1).value.at(10).value.unidad
] else [
  #data.at(1).value.at(10).value.label
]

=== Sección de cuneta

#if (data.at(1).value.at(11).value.aplicable) [
  #data.at(1).value.at(11).value.value
] else [
  #data.at(1).value.at(11).value.label
]

== Datos Generales

=== Convenio Nº

Convenio numero: #data.at(2).value.at(0).value.numero

Fecha de Suscripción:

Dia: #data.at(2).value.at(0).value.fecha_firma.day

Mes: #data.at(2).value.at(0).value.fecha_firma.month

Año: #data.at(2).value.at(0).value.fecha_firma.year

=== Contrato Nº

Contrato numero: #data.at(2).value.at(1).value.numero

Fecha de Suscripción:

Dia: #data.at(2).value.at(1).value.fecha_firma.day

Mes: #data.at(2).value.at(1).value.fecha_firma.month

Año: #data.at(2).value.at(1).value.fecha_firma.year

=== Contratista

#data.at(2).value.at(2).value

=== Monto del Contrato

#data.at(2).value.at(3).value.monto
#data.at(2).value.at(3).value.moneda

#if (data.at(2).value.at(3).value.incluye_igv) [
  Incluido IGV
] else [
  No incluye IGV
]

=== Monto Modificado

#if (data.at(2).value.at(4).value.se_modifico_monto) [
  #data.at(2).value.at(4).value.monto_modificado
] else [
  #data.at(2).value.at(4).value.label
]

=== Plazo de Ejecución

#data.at(2).value.at(5).value.numero_dias
#data.at(2).value.at(5).value.tipo

=== Plazo Modificado

#if (data.at(2).value.at(6).value.se_modifico_plazo) [
  #data.at(2).value.at(6).value.plazo_modificado
] else [
  #data.at(2).value.at(6).value.label
]

=== Nombre / CIP personal clave del Contratista

#for pc in data.at(2).value.at(7).value [

]

#table(
  table.header(
    [Titulo],
    [Nombres],
    [Apellidos],
    [Cargo],
  ),
  columns: (1fr, 2fr, 3fr, 3fr),
  ..for (pc) in data.at(2).value.at(7).value {
    (
      pc.titulo,
      pc.nombres,
      pc.apellidos,
      pc.cargo,
    )
  }
)

=== Contrato de Supervisión Nº

#if (data.at(2).value.at(8).value.se_contrato_supervision) [
  #data.at(2).value.at(8).value.numero
] else [
  #data.at(2).value.at(8).value.label
]

=== Documento de Designación de Inspector

#if (data.at(2).value.at(9).value.se_designo_inspector) [
  #data.at(2).value.at(9).value.numero

  Dia: #data.at(2).value.at(9).value.fecha_firma.day

  Mes: #data.at(2).value.at(9).value.fecha_firma.month

  Año: #data.at(2).value.at(9).value.fecha_firma.year
] else [
  #data.at(2).value.at(9).value.label
]

=== Nombre Supervisor / Inspector del Servicio

#if (data.at(2).value.at(10).value.se_designo_inspector) [
  #table(
    table.header(
      [Titulo],
      [Nombres],
      [Apellidos],
      [Dni],
    ),
    columns: (1fr, 2fr, 2fr, 1fr),

    [#data.at(2).value.at(10).value.titulo],
    [#data.at(2).value.at(10).value.nombres],
    [#data.at(2).value.at(10).value.apellidos],
    [#data.at(2).value.at(10).value.dni],
  )

] else [

]

=== Monto del Contrato de Supervisión

#if (data.at(2).value.at(11).value.se_contrato_supervision) [
  #data.at(2).value.at(11).value.monto
  #data.at(2).value.at(11).value.moneda
] else [
  #data.at(2).value.at(11).value.label
]

=== Fecha de Entrega de Terreno

Dia: #data.at(2).value.at(12).value.day

Mes: #data.at(2).value.at(12).value.month

Año: #data.at(2).value.at(12).value.year

=== Fecha de Inicio del Servicio

Dia: #data.at(2).value.at(13).value.day

Mes: #data.at(2).value.at(13).value.month

Año: #data.at(2).value.at(13).value.year

=== Fecha de Término de Plazo Contractual

#let fecha_inicio = datetime(
  day: data.at(2).value.at(13).value.day,
  month: data.at(2).value.at(13).value.month,
  year: data.at(2).value.at(13).value.year,
)

#let duracion_dias = data.at(2).value.find(item => item.key == "plazo_ejecucion")
#let duracion_dias_typst = duration(days: duracion_dias.value.numero_dias)

#let fecha_fin = fecha_inicio + duracion_dias_typst

Año/Mes/Dia:

#fecha_fin.display()

=== Fecha de Término Vigente

#if (data.at(2).value.at(15).value.se_modifico_plazo) [
  Año/Mes/Dia:
  #let fecha_termino_vigente = datetime(
    day: data.at(2).value.at(15).value.fecha_termino_vigente.day,
    month: data.at(2).value.at(15).value.fecha_termino_vigente.month,
    year: data.at(2).value.at(15).value.fecha_termino_vigente.year,
  )
] else [
  #data.at(2).value.at(15).value.label
]

== #data.at(3).label //situacion mantenimiento vial

=== #data.at(3).value.at(0).label // aspecto tecnico

#let aspectoTecnico = data.at(3).value.at(0).value

==== #aspectoTecnico.at(0).label //describir situacion del mantenimiento

A continuación, se presenta el resumen de las actividades correspondientes al mantenimiento rutinario durante el periodo evaluado. La tabla muestra las cargas de trabajo programadas y ejecutadas, así como el porcentaje de avance alcanzado por cada actividad. Este análisis permite identificar el cumplimiento del cronograma establecido, así como detectar posibles adelantos o desviaciones en la ejecución técnica del servicio.

#figure(image("./images/cargas_trabajo.png", width: 100%), caption: [Cargas de trabajo])
#aspectoTecnico.at(0).value

==== #aspectoTecnico.at(1).label // Avance programado vigente en el mes

#aspectoTecnico.at(1).value %

==== #aspectoTecnico.at(2).label //aspecto programado vigente en el mes

#aspectoTecnico.at(2).value %

==== #aspectoTecnico.at(3).label //aspecto programado acumulado al mes

#aspectoTecnico.at(3).value %

==== #aspectoTecnico.at(4).label //aspecto ejecutado acumulado al mes

#aspectoTecnico.at(4).value %

==== #aspectoTecnico.at(5).label // situacion actual

#aspectoTecnico.at(5).value

==== #aspectoTecnico.at(6).label // resultados de inspeccion

#aspectoTecnico.at(6).value

==== #aspectoTecnico.at(7).label //Datos del personal del contratista

#table(
  columns: (1fr, 4fr, 1fr, 1fr, 3fr, 2fr),
  align: (horizon + center, horizon, horizon + center, horizon + center, horizon, horizon + center),
  table.header(
    [N°],
    [Nombres y Apellidos],
    [Sexo],
    [Edad],
    [Grado de instrucción],
    [Cantidad de hijos],
  ),
  ..for (i, el) in aspectoTecnico.at(7).value.enumerate() {
    (
      [#(i + 1)],
      [#el.nombres, \ #el.apellidos],
      [#el.sexo],
      [#el.edad],
      [#el.grado_instruccion],
      [#el.cantidad_hijos],
    )
  }
)

==== #aspectoTecnico.at(8).label //conclusiones y recomendaciones

===== #aspectoTecnico.at(8).value.at(0).label //conclusiones

#aspectoTecnico.at(8).value.at(0).value

===== #aspectoTecnico.at(8).value.at(1).label //recomendaciones

#aspectoTecnico.at(8).value.at(1).value

=== #data.at(3).value.at(1).label //aspecto económico

#let aspectoEconómico = data.at(3).value.at(1).value

==== #aspectoEconómico.at(0).label //cuadro resumen de valorizaciones

#figure(image("./images/valorizacion.png", width: 100%), caption: [Cuadro resumen de valorizaciones])

==== #aspectoEconómico.at(1).label //Monto valorizado al mes

#aspectoEconómico.at(1).value Soles.

==== #aspectoEconómico.at(2).label //Monto acumulado

#aspectoEconómico.at(2).value Soles.

==== #aspectoEconómico.at(3).label //Observaciones

#aspectoEconómico.at(3).value.

== #data.at(4).label //aspecto administrativo

=== #data.at(4).value.at(0).label // descripcion de la situacion de supervision

// #data.at(4).value.at(0).value
La supervisión se llevó a cabo a lo largo del tramo de intervención, verificando el estado de ejecución de las actividades programadas. Se recabó información mediante observación directa y consultas a pobladores de la zona, con el fin de conocer su percepción sobre el servicio prestado.

=== #data.at(4).value.at(1).label // actividades destacadas del supervisor

- Recorrido del tramo intervenido
- Verificación de actividades ejecutadas respecto al cronograma
- Registro fotográfico del estado actual de las labores
- Medición y cuantificación de avances físicos

=== #data.at(4).value.at(2).label // Logistica y equipos empleados

- Vehículo para traslado dentro del tramo
- Cámara fotográfica o celular con buena resolución
- Instrumentos de medición (wincha, cinta métrica, entre otros)

=== #data.at(4).value.at(3).label // Recomendaciones

Continuar con la ejecución conforme al cronograma aprobado, asegurando la calidad y oportunidad en la prestación del servicio.

== #data.at(5).label // Información complementaria

=== #data.at(5).value.at(0).label // fotografias
// #data.at(5).value.at(0).value

#grid(
  columns: (1fr, 1fr),
  align: (horizon + center, horizon + center),
  gutter: 5mm,
  figure(image("./images/supervision/before.png", width: 100%), caption: [Antes]),
  figure(image("./images/supervision/after.png", width: 100%), caption: [Despues]),
)

#grid(
  columns: (1fr, 1fr),
  align: (horizon + center, horizon + center),
  gutter: 5mm,
  figure(image("./images/supervision/during1.png", width: 100%), caption: [Durante]),
  figure(image("./images/supervision/during2.png", width: 100%), caption: [Durante]),
)

// === #data.at(5).value.at(1).label // actividades destacadas del supervisor

// #data.at(5).value.at(1).value

