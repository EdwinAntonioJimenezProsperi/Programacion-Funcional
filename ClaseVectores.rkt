#lang racket
; INF-319 Programacion Funcional
; Clase 04/11/2024   "VECTORES"
; Formato -->  (vector elemento1 elemento2 ... elementoM)
; make-vector : crea un vector con un valor que indica la cantidad de elementos y opcional un dato
; Formato --> (make-vector 4 #\a) --> devuelve #\a  #\a  #\a  #\a
;             (make-vector 2) --> devuelve  0 0 

; vector-ref : devuelve el dato ubicado en la posicion referenciada del vector
; Formato --> (vector-ref (vector "x" 1 23) 2) devuelve 23

;       (define vect (vector 12 "X" "Hola" 23) )
;       (vector-ref vect 2) --> devuelve "Hola"

; vector-set! : Cambia un dato del vector por otro.
; Formato -->  (define vec (vector 1 2 3) )  --> Se define una constante vec para guardar el vector 
;              (vector-set! vec 0 876) --> Ingresa 876 en la posicion 0 del vector

; vector->list : convierte un vector en una lista
; Formato -->  (define vec2 (vector 12 1 "Hola" "amigos") )
;             (vector->list vec2) --> devuelve (12 1 "Hola" "amigos")

; vector-fill! : ingresa un dato en todas las posiciones del vector.
; Ejemplo:   (define vec (vector 12 1 "Hola" "amigos") )
;           (vector-fill! vec "hola") --> devuelve #("hola" "hola" "hola" "hola")
;         (vector-fill! vec 56) --> devuelve #(56 56 56 56)

; vector-length : devuelve la cantidad de elementos de un vector.
; Formato -->  (define vec (vector 12 1 "Hola" "amigos") )
;            (vector-length vec) --> devuelve 4


; Ejemplo:
; Dado un vector con diferentes valores imprimir dichos valores leyéndolos uno por uno,
; de manera recursiva.

; Análisis: Debemos definir un vector en una funcion y llenar éste con un determinado número de datos
; luego, usando otra funcion debemos leer la primera posicion del vector (el número que indique esta posicion
; debe ser un argumento en la funcion) y mostrarla por pantalla.
; En el llamado recursivo debemos aunmentar en uno la posicion a leer del vector hasta haber leido y
; visualizado todas las posiciones del vector, pero antes se debe conocer el numero de posiciones del
; vector, de otra forma no podriamos finalizar correctamente la recursion (este número tambien debe ser un argumento).


(define vec (vector "Esto" " " "Es" " " "Un" " " "Vector" " " "Leido" " " "Recursivamente" ".") )

(define (DisplayVect length pos)
   (if (= (- length 1) pos)
       (display (vector-ref vec pos) )
       (begin
         (display (vector-ref vec pos) )
         (DisplayVect length (+ 1 pos) )
        )
    )
 )
(DisplayVect (vector-length vec) 0)