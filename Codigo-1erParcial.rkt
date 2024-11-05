#lang racket
; Código Preguntas 1er Parcial ----> INF-319 (Programacion Funcional)
; Ejercicio 6: Realizar una funcion recursiva para hallar: (-1)^n
(define (negativo n)
  (if (= n 0)
      1
      (* -1 (negativo (- n 1)))
   )
 )

; Ejercicio 7: Realizar una funcion para hallar la suma de los n primeros numeros pares.
(define (sumapar n)
  (* n (+ n 1))
 )
; Alternativa de forma recursiva.
(define (sumapar2 n)
  (if (= n 0)
      0
      (+ (* 2 n) (sumapar2 (- n 1)))
   )
 )

; Ejercicio 8: Realizar una funcion para hallar la suma de los cuadrados de un rango de n a m,
; incluyendo n y m.
(define (sumCuad n m)
  (- (/ (* m (+ m 1) (+ (* 2 m) 1)) 6) (/ (* n (- n 1) (- (* 2 n) 1)) 6))
 )
; Alternativa de forma recursiva.
(define (sumatoria n m)
  (if (> n m)
      0
      (+ (* n n) (sumatoria (+ n 1) m))
   )
 )