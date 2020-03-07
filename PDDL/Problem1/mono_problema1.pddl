(define (problem problem_name) (:domain mono_domain)
;En el problema se colocan los objetos/type. el estado inicial(init) y el objetivo(goal)
(:objects pos1 pos2 pos3 
          platanos
          mono)


(:init
    (POS pos1)
    (POS pos2)
    (POS pos3)
    (mono-en pos1)
    (caja-en pos3)
    (plata-en pos2)

)

(:goal (and
    (mono-en pos2)
    (mono-sobre pos2)
    (caja-en pos2)
    (mono-agarra platanos)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
