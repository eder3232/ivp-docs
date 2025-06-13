#import "../config.typ": *

#let header = [
  #align(center)[
    #image("../assets/logo.png", width: 4cm)
    
    = EXPEDIENTE TÉCNICO
    
    *#proyecto*
    
    Expediente Técnico N° #numero_expediente
    
    #text(size: 9pt)[
      #ubicacion.departamento - #ubicacion.provincia - #ubicacion.distrito \
      #date_day de #date_month de #date_year
    ]
  ]
  
  #v(2cm)
] 