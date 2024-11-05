#lang racket

; GUIA 2: Funciones Definidas por el Usuario

; 1) Construir la funcion Circunferencia cuya formula es: 2* pi * radio, dato de entrada el radio.
(define pi 3.1416)

(define (Circunferencia radio)
    (display "El Circunferencia es: ")
    (display (* 2 pi radio))
 )

; 2) Construir una funcion para calcular la suma de: F(x,y) = x^3 + y^2 
(define (suma x y)
  (+ (* x x x) (* y y) )
)

; 3) Construir una funcion para calcular la siguiente expresion: F(a) = (a+1)^2  +  (a-1)^2
(define (binomio a)
  (+ (* (+ a 1) (+ a 1)) (* (- a 1) (- a 1)) )
)

; 4) Construir una funcion para establecer el mayor entre 3 numeros diferentes.
(define (may3 x y z)
  (display "El mayor es: ")
  (display (max x y z))
)

; 5) Elaborar un algoritmo que lea los 3 lados de un triangulo cualquiera y calcule su area,
;    considerar: si a, b y c son los lados, y s el semiperimetro
;        area = raiz_cuadrada( s*(s-a)*(s-b)*(s-c) )

(define (areaT a b c s)
  (display "El area es: ")
  (display (sqrt (* s (- s a) (- s b) (- s c) ) ))
 )

; 6) Se tiene registrada la produccion(unidades) logradas por un operario a lo largo de la semana(lunes a sabado)
;    Elabore un algoritmo que nos muestre si el operario recibira incentivos, sabiendo que el promedio
;    de produccion minima es de 100 unidades, si el promedio de produccion es mayor o igual a 100 unidades
;    el operario recibira incentivos.

(define (prod p)
   (if (>= p 100)
       (display "El operario recibira incentivos.")
       (display "El operario No recibira incentivos.")
    )
)



; GUIA 3: Estructuras de Control

; 1) Dado un numero natural entre 1 -7, imprimir los números de la semana según el
;    numero: 1=Lunes,.. . . . ., 7=Domingo.

(define (dias d)
  (cond
    [ (= d 1) (display "Lunes") ]
    [ (= d 2) (display "Martes") ]
    [ (= d 3) (display "Miercoles") ]
    [ (= d 4) (display "Jueves") ]
    [ (= d 5) (display "Viernes") ]
    [ (= d 6) (display "Sabado") ]
    [ (= d 7) (display "Domingo") ]
    (else
     (display "Error el numero no esta entre 1 y 7")
     )
   )
 )

; 2) Realizar un programa recursivo para dividir dos números, con restas sucesivas.
(define (divRest a b)
  (if (< a b)
      0
      (+ 1 (divRest (- a b) b))
   )
 )

; 3) Generar los números los números naturales hasta n.
(define (natural n)
  (if (= n 0)
      0
     (begin
       (natural (- n 1))
       (display n)
       (display " ")
       )
   )
 )

; 4) Generar la siguiente sumatoria: Sumatoria(i=a,n)---> i
(define (sumatoria1 a n)
  (if (> a n)
      0
      (+ a (sumatoria1 (+ a 1) n))
   )
)

; 5) Generar la siguiente sumatoria: Sumatoria(i=a,n)---> 1 / (i*i) + 1 
(define (sumatoria2 a n)
  (if (> a n)
      0
      (+ (/ 1 (+ (* a a) 1)) (sumatoria2 (+ a 1) n))
   )
)

; 6) imprimir los numeros naturales del 1 al 10 recursivamente.
(define (print10 x)
  (if (= x 10) ;caso base: se da cuando x sea igual a 10
      (display x)
      (begin   ; caso recursivo
        (display x)
        (display " ")
        (print10 (+ 1 x)) ; llamado recursivo
       )
   )
)
; (print10 0) ; llamado de la funcion

; GUIA 4: Carácteres

; 1) Realizar un programa que reciba un numero e indique si se trata de un numero par.
(define (esPar n)
  (if (= 0 (modulo n 2))
      (display "Es par")
      (display "No es par")
   )
)

; 2) Construir una funcion que reciba como parametro un numero N y calcule la suma de todos
;    los enteros comprendidos entre 1 y N.
(define (sumaN n)
  (if (= 0 n)
      0
      (+ n (sumaN (- n 1)))
   )
)

; 3) Escriba una funcion que calcule cuantos numeros naturales hay entre 2 numeros dados, incluyendolos.
(define (cantNum x y)
  (if (> x y)
      0
      (+ 1 (cantNum (+ x 1) y))
   )
 )

; 4) Escriba un programa que dado el dia(en formato numerico) despliegue el nombre del dia de la
;    semana que corresponde.
(define (diaSem d)
  (cond
    [ (= d 1) (display "Lunes") ]
    [ (= d 2) (display "Martes") ]
    [ (= d 3) (display "Miercoles") ]
    [ (= d 4) (display "Jueves") ]
    [ (= d 5) (display "Viernes") ]
    [ (= d 6) (display "Sabado") ]
    [ (= d 7) (display "Domingo") ]
    (else
     (display "Error el numero no corresponde a un dia de la semana")
     )
   )
 )

; GUIA 5: Cadenas

; 1) Construir una funcion que reciba un parametro y devuelva "Verdad" si es un caracter,
;    y "Falso" si no lo es.
(define (esCar c)
  (if (char? c)
      (display "Verdad")
      (display "Falso")
   )
 )