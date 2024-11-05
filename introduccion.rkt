#lang racket
;definicion de variables globales
(define Pi 3.1416)
(define Max 60)
(define Min 5)
;Para ejecutar una funcion es: (Nombre_Funcion Argumentos)
(define (cuadrado x)
  (* x x)
)
(define (suma x y)
  (+ x y)
)
; Muestra como funciona leer (read)
; Para ejecutar la funcion de leer es: (Nombre_Funcion (read))
(define (ejemplo n)
  (display n) ;muestra el valor de n

)
;Sentencias de Control Selectiva (if)
(define (Menora10 x)
  (if (< x 10) ;Condicion de verdad
      (display "Menor a 10") ; Por verdad
      (display "Mayor a 10") ; Por falso
   )

)

;Defino la funcion para Leer con formato
(define (leer)
  (begin ; se utiliza para poder usar varias funciones
    (display "Introduzca un Valor: ")
    (read)
   )
)
;Defino la funcion para mostrar con formato para "un" valor
(define (mostrar)
    (display "El resultado es: ")
)
;Defino la funcion para obtener la circunferencia
(define (circunferencia radio)
  (begin
    (mostrar)
    (* 2 Pi radio)
   )
)
;funcion sumar 3 a un número "n + 3"
(define (suma3 n)
  (display (+ n 3))
)