#lang racket
; Ejercicios de Vectores ---> GUIA "Pares y Listas"

; Ejercicio 1: Dado un vector con diferentes valores imprimir dichos valores del vector
; leyéndolos uno por uno de manera recursiva.

(define (imprime vector n)
  (if (>= n (vector-length vector) )
      (newline)
      (begin
        (display (vector-ref vector n))
        (display " ")
        (imprime vector (+ n 1))
        )
   )
)

(define (eje1 vector)
  (imprime vector 0)
)  ; (eje1 (vector 1 2 34)) invocacion

; Ejercicio 2: Dado un número n, crear un vector de tamanio n y luego ingresar en el vector
; los números del 1 al n, e imprimir el vector. EJM: Dado el número 4 ingresar en el vector
; (vector 1 2 3 4).

(define (eje2 n)
  (eje1 (modifica (make-vector n) 0))
 )

(define (modifica vector n)
    (if (= n (vector-length vector))
        vector
        (begin
          (vector-set! vector n (+ n 1))
          (modifica vector (+ n 1))
          )
      )
) ; (eje2 7) invocacion

;   ----------------------------------
;    METODO LEER DATOS PARA UN VECTOR

(define (leerV)
  (begin
    (display "Ingrese un dato: ")
    (read)
   )
 )

;----------------------------------------
; Ejericio 3: Llenar un vector V de 10 elementos con cuadrados de los 10 primeros elementos
; EJM: (vector 1 4 9 16 25 36 49 64 81 100)

(define (eje3)
  (eje1 (cuadrados (make-vector 10) 0))
)

(define (cuadrados vector n)
  (if (= n 10)
        vector
        (begin
          (vector-set! vector n (* (+ n 1) (+ n 1)))
          (cuadrados vector (+ n 1))
          )
      )
) ;(eje3) invocacion

; Ejercicio 4: Dado un vector V de enteros y un número X, devolver el valor que
; corresponde al número de veces que esta el valor X en el vector.
; EJM: (vector 1 2 3 4 ) , X=4 ---> 1
(define (eje4 vector x)
  (sol4 vector 0 x)
)
(define (sol4 vector n x)
  (if (= n (vector-length vector))
        0
        (begin
          (if (= (vector-ref vector n) x)
              (+ 1 (sol4 vector (+ n 1) x))
              (+ 0 (sol4 vector (+ n 1) x))
           )
          )
      )
 ) ; (eje4 (vector 1 2 3 4) 4) Invocacion


