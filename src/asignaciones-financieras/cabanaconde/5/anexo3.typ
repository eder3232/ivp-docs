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
  return string.replace(regex("[A-Za-z]+('[A-Za-z]+)?"), word => upper(word.text.first()) + lower(word.text.slice(1)))
}


= Anexo III

Ficha Técnica de Monitoreo y Seguimiento Mensual

*Periodo:*

Desde:
Dia: 01 -
Mes: 05 -
Año: #data.at(2).value.at(13).value.year

Hasta:
Dia: 31 -
Mes: 05 -
Año: 2025

Fecha: 05/06/2025



== Datos del Mantenimiento Periódico / Rutinario
#let datos_mantenimiento = data.find(e => e.key == "datos_mantenimiento")
=== Código de Ruta

#datos_mantenimiento.value.find(e => e.key == "codigo_ruta").value

=== Nombre del Tramo

#datos_mantenimiento.value.at(1).value

=== Tipología
#let tipologia = datos_mantenimiento.value.find(e => e.key == "tipologia").value

Tipo I: #tipologia.tipo_I Km

Tipo II: #tipologia.tipo_II Km

Tipo III: #tipologia.tipo_III Km

=== Longitud del tramo

#datos_mantenimiento.value.find(e => e.key == "longitud_tramo").value

=== Nivel de Servicio

#datos_mantenimiento.value.find(e => e.key == "nivel_servicio").value

=== Localidades

#for localidad in datos_mantenimiento.value.find(e => e.key == "localidades").value [
  - #localidad
]

=== Distritos

#for distrito in datos_mantenimiento.value.find(e => e.key == "distritos").value [
  - #distrito \
]

=== Provincia
#datos_mantenimiento.value.find(e => e.key == "provincia").value

=== Departamento

#datos_mantenimiento.value.find(e => e.key == "departamento").value

=== Región Natural


#for value in datos_mantenimiento.value.find(e => e.key == "region_natural").value [
  - #title-case(value) \
]

== Características Técnicas
#let caracteristicas_tecnicas = data.find(e => e.key == "caracteristicas_tecnicas").value

=== Velocidad directriz
#let velocidad_directriz = caracteristicas_tecnicas.find(e => e.key == "velocidad_directriz").value

#if (velocidad_directriz.aplicable) [
  #velocidad_directriz.value
  #velocidad_directriz.unidad
] else [
  #velocidad_directriz.label
]

=== Tipo de Superficie de Rodadura
#let tipo_superficie_rodadura = caracteristicas_tecnicas.find(e => e.key == "tipo_superficie_rodadura").value

#if (tipo_superficie_rodadura.aplicable) [
  #tipo_superficie_rodadura.value
] else [
  #tipo_superficie_rodadura.label
]

=== Ancho de la calzada
#let ancho_calzada = caracteristicas_tecnicas.find(e => e.key == "ancho_calzada").value

#if (ancho_calzada.aplicable) [
  #ancho_calzada.value
  #ancho_calzada.unidad
] else [
  #ancho_calzada.label
]

=== Sobre anchos
#let sobreanchos = caracteristicas_tecnicas.find(e => e.key == "sobreanchos").value

#if (sobreanchos.aplicable) [
  #sobreanchos.value
  #sobreanchos.unidad
] else [
  #sobreanchos.label
]

=== Radio mínimo normal
#let radio_minimo_normal = caracteristicas_tecnicas.find(e => e.key == "radio_minimo_normal").value

#if (radio_minimo_normal.aplicable) [
  #radio_minimo_normal.value
  #radio_minimo_normal.unidad
] else [
  #radio_minimo_normal.label
]

=== Radio mínimo excepcional
#let radio_minimo_excepcional = caracteristicas_tecnicas.find(e => e.key == "radio_minimo_excepcional").value

#if (radio_minimo_excepcional.aplicable) [
  #radio_minimo_excepcional.value
  #radio_minimo_excepcional.unidad
] else [
  #radio_minimo_excepcional.label
]

=== Pendiente máxima
#let pendiente_maxima = caracteristicas_tecnicas.find(e => e.key == "pendiente_maxima").value

#if (pendiente_maxima.aplicable) [
  #pendiente_maxima.value
  #pendiente_maxima.unidad
] else [
  #pendiente_maxima.label
]

=== Pendiente mínima
#let pendiente_minima = caracteristicas_tecnicas.find(e => e.key == "pendiente_minima").value

#if (pendiente_minima.aplicable) [
  #pendiente_minima.value
  #pendiente_minima.unidad
] else [
  #pendiente_minima.label
]

=== Pendiente máxima excepcional
#let pendiente_maxima_excepcional = caracteristicas_tecnicas.find(e => e.key == "pendiente_maxima_excepcional").value

#if (pendiente_maxima_excepcional.aplicable) [
  #pendiente_maxima_excepcional.value
  #pendiente_maxima_excepcional.unidad
] else [
  #pendiente_maxima_excepcional.label
]

=== Bombeo
#let bombeo = caracteristicas_tecnicas.find(e => e.key == "bombeo").value

#if (bombeo.aplicable) [
  #bombeo.value
] else [
  #bombeo.label
]

=== Peralte
#let peralte = caracteristicas_tecnicas.find(e => e.key == "peralte").value

#if (peralte.aplicable) [
  #peralte.value
  #peralte.unidad
] else [
  #peralte.label
]

=== Sección de cuneta
#let seccion_de_cuneta = caracteristicas_tecnicas.find(e => e.key == "seccion_de_cuneta").value

#if (seccion_de_cuneta.aplicable) [
  #seccion_de_cuneta.value
] else [
  #seccion_de_cuneta.label
]

== Datos Generales
#let datos_genarales = data.find(e => e.key == "datos_generales").value

=== Convenio Nº
#let convenio = datos_genarales.find(e => e.key == "convenio").value

Convenio numero: #convenio.numero

Fecha de Suscripción:

Dia: #convenio.fecha_firma.day
Mes: #convenio.fecha_firma.month
Año: #convenio.fecha_firma.year

=== Contrato Nº
#let contrato = datos_genarales.find(e => e.key == "contrato").value

Contrato numero: #contrato.numero

Fecha de Suscripción:

Dia: #contrato.fecha_firma.day
Mes: #contrato.fecha_firma.month
Año: #contrato.fecha_firma.year

=== Contratista

#datos_genarales.find(e => e.key == "contratista").value

=== Monto del Contrato
#let monto_contrato = datos_genarales.find(e => e.key == "monto_contrato").value

#monto_contrato.monto
#monto_contrato.moneda -
#if (monto_contrato.incluye_igv) [
  Incluido IGV
] else [
  No incluye IGV
]

=== Monto Modificado
#let monto_modificado = datos_genarales.find(e => e.key == "monto_modificado").value

#if (monto_modificado.se_modifico_monto) [
  #monto_modificado.monto_modificado
] else [
  #monto_modificado.label
]

=== Plazo de Ejecución
#let plazo_ejecucion = datos_genarales.find(e => e.key == "plazo_ejecucion").value

#plazo_ejecucion.numero_dias
#plazo_ejecucion.tipo

=== Plazo Modificado
#let plazo_modificado = datos_genarales.find(e => e.key == "plazo_modificado").value

#if (plazo_modificado.se_modifico_plazo) [
  #plazo_modificado.plazo_modificado
] else [
  #plazo_modificado.label
]

=== Nombre / CIP personal clave del Contratista
#let personal_clave = datos_genarales.find(e => e.key == "personal_clave").value

#table(
  table.header([Titulo], [Nombres], [Apellidos], [Cargo]),
  columns: (1fr, 2fr, 3fr, 3fr),
  ..for (pc) in personal_clave {
    (
      pc.titulo,
      pc.nombres,
      pc.apellidos,
      pc.cargo,
    )
  },
)

=== Contrato de Supervisión Nº
#let contrato_supervision = datos_genarales.find(e => e.key == "contrato_supervision").value

#if (contrato_supervision.se_contrato_supervision) [
  #contrato_supervision.numero
] else [
  #contrato_supervision.label
]

=== Documento de Designación de Inspector
#let documento_designacion_inspector = datos_genarales.find(e => e.key == "documento_designacion_inspector").value

#if (documento_designacion_inspector.se_designo_inspector) [
  #documento_designacion_inspector.numero

  Dia: #documento_designacion_inspector.fecha_firma.day
  Mes: #documento_designacion_inspector.fecha_firma.month
  Año: #documento_designacion_inspector.fecha_firma.year
] else [
  #documento_designacion_inspector.label
]

=== Nombre Supervisor / Inspector del Servicio
#let nombre_supervisor_inspector = datos_genarales.find(e => e.key == "nombre_supervisor_inspector").value

#if (nombre_supervisor_inspector.se_designo_inspector) [
  #table(
    table.header([Titulo], [Nombres], [Apellidos], [DNI]),
    columns: (1fr, 2fr, 2fr, 1fr),

    [#nombre_supervisor_inspector.titulo],
    [#nombre_supervisor_inspector.nombres],
    [#nombre_supervisor_inspector.apellidos],
    [#nombre_supervisor_inspector.dni],
  )

] else [
  No se designo inspector
]

=== Monto del Contrato de Supervisión
#let Monto_contrato_supervision = datos_genarales.find(e => e.key == "Monto_contrato_supervision").value

#if (Monto_contrato_supervision.se_contrato_supervision) [
  #Monto_contrato_supervision.monto
  #Monto_contrato_supervision.moneda
] else [
  #Monto_contrato_supervision.label
]

=== Fecha de Entrega de Terreno
#let fecha_entrega_terreno = datos_genarales.find(e => e.key == "fecha_entrega_terreno").value

Dia: #fecha_entrega_terreno.day -
Mes: #fecha_entrega_terreno.month -
Año: #fecha_entrega_terreno.year

=== Fecha de Inicio del Servicio
#let fecha_incio_servicio = datos_genarales.find(e => e.key == "fecha_incio_servicio").value

Dia: #fecha_incio_servicio.day -
Mes: #fecha_incio_servicio.month -
Año: #fecha_incio_servicio.year

=== Fecha de Término de Plazo Contractual
#let fecha_termino_plazo_contractual = datos_genarales.find(e => e.key == "fecha_termino_plazo_contractual").value

#let fecha_inicio = datetime(
  day: fecha_incio_servicio.day,
  month: fecha_incio_servicio.month,
  year: fecha_incio_servicio.year,
)

#let duracion_dias = data.at(2).value.find(item => item.key == "plazo_ejecucion")
#let duracion_dias_typst = duration(days: duracion_dias.value.numero_dias)

#let fecha_fin = fecha_inicio + duracion_dias_typst

Año/Mes/Dia:

#fecha_fin.display()

=== Fecha de Término Vigente
#let fecha_termino_vigente = datos_genarales.find(e => e.key == "fecha_termino_vigente").value

#if (fecha_termino_vigente.se_modifico_plazo) [
  Año/Mes/Dia:
  #let fecha_termino_vigente = datetime(
    day: fecha_termino_vigente.fecha_termino_vigente.day,
    month: fecha_termino_vigente.fecha_termino_vigente.month,
    year: fecha_termino_vigente.fecha_termino_vigente.year,
  )
] else [
  #fecha_termino_vigente.label
]

#let situacion_servicio_mantenimiento_vial = data.find(e => e.key == "situacion_servicio_mantenimiento_vial").value
== #data.find(e => e.key == "situacion_servicio_mantenimiento_vial").label //situacion mantenimiento vial

#let aspecto_tecnico = situacion_servicio_mantenimiento_vial.find(e => e.key == "aspecto_tecnico").value
=== #situacion_servicio_mantenimiento_vial.find(e => e.key == "aspecto_tecnico").label // aspecto tecnico

#let aspectoTecnico = situacion_servicio_mantenimiento_vial.find(e => e.key == "aspecto_tecnico").value

==== #(
  aspectoTecnico.find(e => e.key == "descripcion_situacion_mantenimiento").label
) //describir situacion del mantenimiento

A continuación, se presenta el resumen de las actividades correspondientes al mantenimiento rutinario durante el periodo evaluado. La tabla muestra las cargas de trabajo programadas y ejecutadas, así como el porcentaje de avance alcanzado por cada actividad. Este análisis permite identificar el cumplimiento del cronograma establecido, así como detectar posibles adelantos o desviaciones en la ejecución técnica del servicio.

#figure(image("./images/cargas_trabajo.png", width: 100%), caption: [Cargas de trabajo])
#aspectoTecnico.find(e => e.key == "descripcion_situacion_mantenimiento").value

#let avance_programado_vigente_mes = aspecto_tecnico.find(e => e.key == "avance_programado_vigente_mes")
==== #avance_programado_vigente_mes.label // Avance programado vigente en el mes
#avance_programado_vigente_mes.value %

#let avance_ejecutado_vigente_mes = aspecto_tecnico.find(e => e.key == "avance_ejecutado_mes")
==== #avance_ejecutado_vigente_mes.label //aspecto programado vigente en el mes
#avance_ejecutado_vigente_mes.value %

#let avance_programado_acumulado_mes = aspecto_tecnico.find(e => e.key == "avance_programado_acumulado_mes")
==== #avance_programado_acumulado_mes.label //aspecto programado acumulado al mes
#avance_programado_acumulado_mes.value %

#let avance_ejecutado_acumulado_mes = aspecto_tecnico.find(e => e.key == "avance_ejecutado_acumulado_mes")
==== #avance_ejecutado_acumulado_mes.label //aspecto ejecutado acumulado al mes
#avance_ejecutado_acumulado_mes.value %

#let situacion_actual = aspecto_tecnico.find(e => e.key == "situacion_actual")
==== #situacion_actual.label // situacion actual
#situacion_actual.value

#let resultados_inspeccion = aspecto_tecnico.find(e => e.key == "resultados_inspeccion")
==== resultados_inspeccion.label // resultados de inspeccion
#resultados_inspeccion.value

#let datos_personal_contratista = aspecto_tecnico.find(e => e.key == "datos_personal_contratista")
==== #datos_personal_contratista.label //Datos del personal del contratista

#table(
  columns: (1fr, 4fr, 1fr, 1fr, 3fr, 2fr),
  align: (horizon + center, horizon, horizon + center, horizon + center, horizon, horizon + center),
  table.header([N°], [Nombres y Apellidos], [Sexo], [Edad], [Grado de instrucción], [Cantidad de hijos]),
  ..for (i, el) in datos_personal_contratista.value.enumerate() {
    (
      [#(i + 1)],
      [#el.nombres, \ #el.apellidos],
      [#el.sexo],
      [#el.edad],
      [#el.grado_instruccion],
      [#el.cantidad_hijos],
    )
  },
)

#let conclusiones_recomendaciones = aspecto_tecnico.find(e => e.key == "conclusiones_recomendaciones")
==== #conclusiones_recomendaciones.label //conclusiones y recomendaciones

#let conclusiones = conclusiones_recomendaciones.value.find(e => e.key == "conclusiones")
===== #conclusiones.label //conclusiones
#conclusiones.value

#let recomendaciones = conclusiones_recomendaciones.value.find(e => e.key == "recomendaciones")
===== #recomendaciones.label //recomendaciones
#recomendaciones.value


=== #situacion_servicio_mantenimiento_vial.find(e => e.key == "aspecto_economico").label //aspecto económico
#let aspecto_economico = situacion_servicio_mantenimiento_vial.find(e => e.key == "aspecto_economico").value


==== #aspecto_economico.find(e => e.key == "cuadro_resumen_valorizaciones").label //cuadro resumen de valorizaciones

#figure(image("./images/valorizacion.png", width: 100%), caption: [Cuadro resumen de valorizaciones])

#let monto_valorizado_mes = aspecto_economico.find(e => e.key == "monto_valorizado_mes")
==== #monto_valorizado_mes.label //Monto valorizado al mes
#monto_valorizado_mes.value Soles.

#let monto_acumulado = aspecto_economico.find(e => e.key == "monto_acumulado")
==== #monto_acumulado.label //Monto acumulado
#monto_acumulado.value Soles.

#let observaciones = aspecto_economico.find(e => e.key == "observaciones")
==== #observaciones.label //Observaciones
#observaciones.value.

== #data.find(e => e.key == "area_supervision_inspeccion").label //aspecto administrativo
#let area_supervision_inspeccion = data.find(e => e.key == "area_supervision_inspeccion").value

=== #(
  area_supervision_inspeccion.find(e => e.key == "descripcion_situacion_supervision_inspeccion").label
) // descripcion de la situacion de supervision

// #data.at(4).value.at(0).value
La supervisión se llevó a cabo a lo largo del tramo de intervención, verificando el estado de ejecución de las actividades programadas. Se recabó información mediante observación directa y consultas a pobladores de la zona, con el fin de conocer su percepción sobre el servicio prestado.

=== #(
  area_supervision_inspeccion.find(e => e.key == "actividades_destacadas_supervisor_inspector").label
) // actividades destacadas del supervisor

- Recorrido del tramo intervenido
- Verificación de actividades ejecutadas respecto al cronograma
- Registro fotográfico del estado actual de las labores
- Medición y cuantificación de avances físicos

=== #(
  area_supervision_inspeccion.find(e => e.key == "logistica_equipos_empleados").label
) // Logistica y equipos empleados

- Vehículo para traslado dentro del tramo
- Cámara fotográfica o celular con buena resolución
- Instrumentos de medición (wincha, cinta métrica, entre otros)

=== #(
  area_supervision_inspeccion.find(e => e.key == "recomendaciones").label
) // Recomendaciones

Continuar con la ejecución conforme al cronograma aprobado, asegurando la calidad y oportunidad en la prestación del servicio.

== #data.find(e => e.key == "informacion_complementaria").label // Información complementaria
#let informacion_complementaria = data.find(e => e.key == "informacion_complementaria").value

=== #informacion_complementaria.find(e => e.key == "fotografias").label // fotografias
// #data.at(5).value.at(0).value

#grid(
  columns: (1fr, 1fr),
  align: (horizon + center, horizon + center),
  gutter: 5mm,
  figure(image("./images/supervision/before.jpg", width: 100%), caption: [Antes]),
  figure(image("./images/supervision/after.jpg", width: 100%), caption: [Despues]),
)

#grid(
  columns: (1fr, 1fr),
  align: (horizon + center, horizon + center),
  gutter: 5mm,
  figure(image("./images/supervision/during1.jpg", width: 100%), caption: [Durante]),
  figure(image("./images/supervision/during2.jpg", width: 100%), caption: [Durante]),
)

// === #data.at(5).value.at(1).label // actividades destacadas del supervisor

// #data.at(5).value.at(1).value

