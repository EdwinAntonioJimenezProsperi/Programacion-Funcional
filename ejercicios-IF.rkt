#lang racket
; Ejercicios GUIA-2 INF-319
; Definimos la funcion leer para leer los datos
(define (leer)
  (begin
    (display "Ingrese un Valor: ")
    (read)
   )
)

; Ejercicio 1 : Construir la funcion Circunferencia cuya formula es:
; 2 * pi * radio, cuyo dato de entrada es el radio.
(define pi 3.1416)  ; definimos como variable global
(define (Circunferencia radio)
  (begin
    (display "La circunferencia es: ")
    (* 2 pi radio)
   )
)

; Ejercicio 2: construya una funcion para calcular: f(x,y) = x^3 + y^2.
(define (calcularxy x y)
  (begin
    (display "El resultado es: ")
    (+ (* x x x) (* y y))
   )
)

; Ejercicio 3: Construir una funcion para calcular la siguiente expresion: f(a) = (a+1)^2 + (a-1)^2 = 2a^2 + 2.
(define (calcular a)
  (begin
    (display "El resultado es: ")
    (+ (* 2 (* a a)) 2)
   )
)
; Defino una funcion que encuentra el mayor entre dos numeros diferentes.
(define (mayor2 a b)
  (begin
     (if (> a b)
        a
        b
      )
   )
)
; Ejercicio 4: Contruir una funcion para establecer el mayor entre 3 numeros diferentes.
(define (mayor3 x y z)
  (begin
     (if (> x (mayor2 y z))
        (display x)
        (mayor2 y z)
      )
   )
)
; Funcion para leer el valor del semi-perimetro
(define (leerp)
  (begin
    (display "Ingrese el valor del semi-perimetro: ")
    (read)
   )
)
; Ejercicio 5: Elaborar un algoritmo que lea los 3 lados de un triangulo cualquiera y calcule su area,
; considerar: si a, b y c son los lados, y s el semi perimetro.
; A = sqrt ( s*(s-a)*(s-b)*(s-c) )
(define (areatriangulo a b c s)
  (begin
    (display "El area es: ")
    (sqrt (* s (- s a) (- s b) (- s c)))
   )
)

; Ejercicio 6: Se tiene registrada la produccion (unidades) logradas por un operario a lo largo
; de la semana (lunes a sabado). Elabore un algoritmo que nos muestre si el operario recibira incentivos
; sabiendo que el promedio de produccion minima es de 100 unidades. Si el promedio de produccion es mayor o igual a
; 100 unidades recibe incentivos.
(define (promedio produccion)
  (begin
    (if(>= produccion 100)
    (display "Recibe Incentivos")
    (display "No recibe Incentivos")
    )
   )
)