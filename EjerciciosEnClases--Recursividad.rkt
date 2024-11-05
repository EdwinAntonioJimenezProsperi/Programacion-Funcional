#lang racket
; Ejercicios de Recursividad en Clases.

; Ejercicio: Realizar una funcion recursiva para multiplicar dos numeros enteros
; sin utilizar el operador de multiplicacion
(define (mult x y)
  (if (= x 0)
      0
      (+ y (mult (- x 1) y))
   )
 )

; Ejercicio: Realizar un algoritmo recursivo para obtener: x^y
(define (pot x y)
  (if (= y 0)
      1
      (* x (pot x (- y 1)))
   )
 )

; Ejercicio: Realizar un algoritmo recursivo para sumar dos numeros x,y naturales.
(define (suma x y)
  (if (= y 0)
      x
      (+ 1 (suma x (- y 1)))
   )
 )