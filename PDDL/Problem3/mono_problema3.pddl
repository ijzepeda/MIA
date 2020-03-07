(define (problem monoproblem3) (:domain mono_domain)
;En el problema se colocan los objetos/type. el estado inicial(init) y el objetivo(goal)
(:objects pos1 pos2 pos3 pos4 pos5 pos6
          platanos
          mono
          caja
          reja
          switch)


(:init
    ;con mayuscula son para asegurar que los objetos esten en el escenario
    (POS pos1)
    (POS pos2)
    (POS pos3)
    (POS pos4)
    (POS pos5)
    (POS pos6)
    (MONO mono)
    (CAJA caja)
    (REJA reja)
    (SWITCH switch)
    (mono-en pos2)
    (caja-en pos3)
    (plata-en pos6)
    ;(reja-en pos6)
    ;(reja-abierta reja)
    (switch-en pos1)

)

(:goal (and
    (mono-en pos6)
    (mono-sobre pos6)
    (caja-en pos6)
    (mono-agarra platanos)
    (reja-abierta reja)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
