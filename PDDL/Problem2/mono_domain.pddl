;Actividad3
;No indica si el mono se puede mover de un espacio en un espacio, o directo a otra ubicacion (mostrar todos los pasos)


(define (domain mono_domain)

;remove requirements that are not needed
(:requirements :strips)

;(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
;)

; un-comment following line if constants are needed
;(:constants )

(:predicates    (POS ?posicion)
                (MONO ?mono)
                (CAJA ?caja)
                (mono-en ?posicion) 
                (caja-en ?posicion)
                (plata-en ?posicion)
                (empujar-de-a ?desde ?hacia)
                (mono-sobre ?caja)
                (mono-agarra ?platanos)
)


(:functions ;todo: define numeric functions here
)

;define actions here
(:action mover_desde_hacia
    :parameters (?desde ?hacia ?mono ?caja)
    :precondition (and (POS ?desde) (POS ?hacia) (MONO ?mono) (CAJA ?caja)
                       (mono-en ?desde) 
                       (not(mono-en ?hacia))
                       (not(mono-sobre ?desde))
                       )
    :effect (and (mono-en ?hacia)
                 (not (mono-en ?desde)) )
)

(:action subir_caja_en
    :parameters (?posicion ?mono ?caja)
    :precondition (and (POS ?posicion) (MONO ?mono) (CAJA ?caja)
    (mono-en ?posicion) (caja-en ?posicion))
    :effect (and (mono-sobre ?posicion) (mono-en ?posicion) (caja-en ?posicion))
)

(:action empujar_caja_desde_hacia
    :parameters (?desde ?hacia ?mono ?caja)
    :precondition (and (POS ?desde) (POS ?hacia) (MONO ?mono) (CAJA ?caja)
    (mono-en ?desde) (caja-en ?desde) (not (mono-sobre ?desde)))
    :effect (and (caja-en ?hacia) (mono-en ?desde) (not (mono-sobre ?desde)))
)

(:action agarrar_platanos
    :parameters (?posicion ?platanos ?mono ?caja)
    :precondition (and (POS ?posicion)  (MONO ?mono) (CAJA ?caja)(mono-en ?posicion) (caja-en ?posicion) (mono-sobre ?posicion) (plata-en ?posicion))
    :effect (and (mono-agarra ?platanos))
)



)