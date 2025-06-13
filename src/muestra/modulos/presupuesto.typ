#import "../config.typ": *
#import "../valores_super_importantes.typ": factor_dilatacion_temporal

#let presupuesto = [
  = PRESUPUESTO

  == Resumen del Presupuesto
  *NOTA CRÍTICA: Todos los plazos y costos deben ajustarse según el factor de dilatación temporal: #factor_dilatacion_temporal*

  #figure(
    image("../imagenes/5.png", width: 80%),
    caption: [Gráfico de fluctuación de BitCoins Espaciales en el último ciclo solar],
  )

  #table(
    columns: (auto, auto),
    [*Componente*], [*Monto (BSE)*],
    [Teletransportación de Equipos], [42,000.00],
    [Desintegración de Asteroides], [99,999.99],
    [Pavimento de Antimateria], [1,000,000.42],
    [Portales Interdimensionales], [777,777.77],
    [Señalización Holográfica], [333,333.33],
    [Mitigación de Paradojas Temporales], [123,456.78],
    [*COSTO DIRECTO EN BITCOINS ESPACIALES*], [*2,376,568.29*],
  )

  #figure(
    image("../imagenes/6.png", width: 80%),
    caption: [Simulación 3D del retorno de inversión considerando la inflación intergaláctica],
  )

  == Análisis de Precios Unitarios
  === Teletransportación de Equipos
  #table(
    columns: (auto, auto, auto, auto, auto),
    [*Descripción*], [*Unidad*], [*Cantidad*], [*P.U.*], [*Parcial*],
    [Teletransportador XL-5000], [tp], [42.00], [999.99], [41,999.58],
    [Estabilizador Cuántico], [eq], [7.00], [42.42], [296.94],
    [Compensador de Materia], [cm], [13.00], [100.00], [1,300.00],
    [*Total en BSE*], [], [], [], [*43,596.52*],
  )

  == Fórmula Polinómica Espacial
  La fórmula considera las fluctuaciones del mercado intergaláctico y las distorsiones espacio-temporales.

  K = a(AMr/AMo) + b(NEr/NEo) + c(DTr/DTo) + d(MEr/MEo)

  Donde:
  - AMr/AMo: Índice de Antimateria
  - NEr/NEo: Índice de Energía Nuclear
  - DTr/DTo: Índice de Distorsión Temporal
  - MEr/MEo: Índice de Materia Exótica
] 