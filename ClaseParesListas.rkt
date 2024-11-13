#lang racket
; Clase Pares y Listas ---> Programacion Funcional INF-319 ( 13/11/2024 )
; ------ Pares -------
; se puede ingresar cualquier tipo de dato.
; Sintaxis: (cons cabeza cola)
; Ejemplo: (cons "cabeza" "cola"), para definir un par: (define nombrePar par)
; ejemplo: (define parAux (cons 1 2) )
; car: extrae la cabeza de un par.
; ejm: (define par (cons 1 "hola") )
;      (display (car par) )
; cdr: para extraer la cola de un par.
; ejm: (define par (cons 1 "hola") )
;      (display (cdr par) )
; la diferencia entre pares y listas es que los pares pueden tener otros pares en la cola, la listas
; admiten mas de dos elementos y terminan en un elemento vacio
; verificar si es una funcion par
; sintaxis: (pair? nombrePar) -- esto devuelve un valor booleano

; -------- LISTAS -------
; terminan en un espacio vacio
; Funciones asociados a listas:
; list: crea una lista
; ejm: (list 2 "hola" )
; definir una lista: (define nombrelista lista)
; ejm: (define listaAux (list 1 2 3) )
; se utilizan las funciones car y cdr de los pares para ver la cabeza y la cola de la lista.
; null? : funcion que determina si una lista esta vacia
; ejm: (null? (list "")) -- devuelve falso
; ejm: (null? (list) ) -- devuelve verdad
; append: es el procedimiento que nos permite añadir un elemento a la cola.
; ejm: (append nombreLista elemento)
; list?: este procedimiento determina si un elemento es una lista.
; ejm: (list? nombreLista)
; ejm: (list? #\a) -- devulve falso
; length: devuelve la cantidad de elementos de una lista
; ejm: (length nombreLista)
; reverse: permite invertir una lista.
; ejm: (reverse nombreLista)
; list-tail: devuelve una subcola de una lista.
; ejm: (list-tail nombreLista indice)
; el indice es donde comenzara la cola.los indices de una lista comienzan en 0 y terminan en un elemento vacio


;Ejemplo 1: añadir 10 elementos a una lista.

(define (adicionar listaNum pos)
  (if (<= pos 10)
      (adicionar (append listaNum (list pos) ) (+ pos 1) )
      listaNum
   )
 )


; Ejemplo 2: recibir una lista e imprimir uno por uno los elementos.

(define (imprimir lista)
  (if (not (null? lista) ); si la lista no esta vacia
      (begin
        (display (car lista) )
        (newline)
        (imprimir (cdr lista))
       )
      (display "")
   )
  )

; Ejemplo 3: la funcion devuelve una lista con los datos que el usuario ingreso por teclado,
; la entrada de datos termina cuando se ingrese -1.

(define (agregar lista leer)
  (if (equal? leer -1) ;compara dos valores
      (display lista)
      (agregar (append lista (list leer)) (read) )
  )
)
; (agregar (list) (read))