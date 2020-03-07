(define (problem monoproblem2) (:domain mono_domain)
;En el problema se colocan los objetos/type. el estado inicial(init) y el objetivo(goal)
(:objects pos1 pos2 pos3 
          platanos
          mono
          caja)


(:init
    ;con mayuscula son para asegurar que los objetos esten en el escenario
    (POS pos1)
    (POS pos2)
    (POS pos3)
    (MONO mono)
    (CAJA caja)
    (mono-en pos2)
    (caja-en pos3)
    (plata-en pos1)

)

(:goal (and
    (mono-en pos1)
    (mono-sobre pos1)
    (caja-en pos1)
    (mono-agarra platanos)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
