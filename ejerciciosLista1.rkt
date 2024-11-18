#lang racket
;EJERCICIO 1
;construir una funcion que reciba una lista y retorne la suma de
;sus elementos

;definiendo funcion suma elementos de una lista
(define (sumaElementosLista lista)
  (if (not(null? lista));mientras no este vacia
      (+ (car lista) (sumaElementosLista (cdr lista)));verdad
      0;falso
  )
)
;definiendo una lista x
(define lista1 (list 1 2 3 4 5))
;probando el metodo
;(sumaElementosLista lista1)
;----------------------------------------------------------
;EJERCICIO 2
;construir un metodo que reciba una lista y cuente recursivamente
;cuantos elementos hay en  la lista

;funcion contar
(define (contarElementos lista)
  (if (not(null? lista))
      (+ 1 (contarElementos (cdr lista)))
      0
  )
)
;definiendo otra lista x
(define lista2 (list 1 "hola" #\r 2)); la lista tiene 4 elementos
;probando metodo contar
;(contarElementos lista2)
;------------------------------------------------------------
;EJERCICIO 3
;Construor una funcion que reciba una lista y un dato a buscar
;se debe devolver la posicion en la que se encuentra el dato la
;primera vez en la lista, o -1 si no existe.

;funcion buscar
(define (buscarDato lista dato)
  (if (not(null? lista));mientras no este vacia
      (begin
        (if (= (compara dato (car lista)) 1)
            0
            (+ 1 (buscarDato (cdr lista) dato))
        )
      );verdad
      0;falso
  )
)

;compara
(define (compara dato1 dato2)
  (if (equal? dato1 dato2)
      1;iguales
      0;diferentes
  )
)
;solucionando lo pedido
;dado que el metodo buscaDato devuelve la posicion del dato buscado,
;pero si no encuentra, devuelve la cantidad recorrida, es decir
;el tamaño de la lista, por lo tanto es lo unico que se verifica
;si el valor devuelto es igual al tamaño, mostrar -1, porque no
;se encontro, caso contrario, mostrar el valor obtenido por la funcion
(define (solucion3 lista dato)
  (define x (buscarDato lista dato))
  (if (= x (length lista))
      (display "-1")
      (display x)
  )
)
;probando
;(solucion3 lista1 5)






