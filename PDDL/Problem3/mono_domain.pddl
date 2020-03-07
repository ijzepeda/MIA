;Actividad3
;No indica si el mono se puede mover de un espacio en un espacio, o directo a otra ubicacion (mostrar todos los pasos)


(define (domain mono_domain)

;remove requirements that are not needed
(:requirements :strips)

;(:types reja - REJA;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
;)

; un-comment following line if constants are needed
;(:constants )

(:predicates    (POS ?posicion)
                (MONO ?mono)
                (CAJA ?caja)
                (REJA ?reja)
                (SWITCH ?switch)
                (mono-en ?posicion) 
                (caja-en ?posicion)
                (plata-en ?posicion)
                ;(empujar-de-a ?desde ?hacia)
                (mono-sobre ?caja)
                (mono-agarra ?platanos)
                ;(mono-presiona ?posicion)
                ;(reja-en ?posicion)
                (reja-abierta ?reja)
                (switch-en ?posicion)
)


(:action abrir_reja
    :parameters (?posicion ?reja)
    :precondition (and (mono-en ?posicion) (switch-en ?posicion) (not(reja-abierta ?reja)))
    :effect (reja-abierta ?reja)
)

(:action empujar_caja_desde_hacia
    :parameters (?desde ?hacia)
    :precondition (and (mono-en ?desde) (caja-en ?desde) 
                       (not (mono-sobre ?desde)))
    :effect (and (caja-en ?hacia) (mono-en ?desde) (not (mono-sobre ?desde)))
)


(:action mover_desde_hacia
    :parameters (?desde ?hacia)
    :precondition (and (POS ?desde) (POS ?hacia)
                       (mono-en ?desde) 
                       (not(mono-en ?hacia))
                       (not(mono-sobre ?desde))
                       )
    :effect (and (mono-en ?hacia)
                 (not (mono-en ?desde)) )
)


(:action subir_caja_en
    :parameters (?posicion)
    :precondition (and (mono-en ?posicion) (caja-en ?posicion))
    :effect (and (mono-sobre ?posicion) (mono-en ?posicion) (caja-en ?posicion))
)

(:action agarrar_platanos
    :parameters (?posicion ?platanos)
    :precondition (and (mono-en ?posicion) (caja-en ?posicion) (mono-sobre ?posicion) (plata-en ?posicion))
    :effect (and (mono-agarra ?platanos))
)



)