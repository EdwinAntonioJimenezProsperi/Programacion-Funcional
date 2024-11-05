#lang racket
(define (leer)
  (begin
  (display "Ingrese un Dato: ")
  (read)
   )
 )

; Estructura de Flujo IF
; Ejercicio 1: Crear una funcion que diga si el resultado de la suma de dos numeros es mayor a 10
; Se utiliza begin para agrupar el codigo en partes, el primer begin es para el bloque por verdad y
; el segundo para el bloque por falso.
(define (Mayor n1 n2)
  (if (> (+ n1 n2) 10)
      (begin
        (display (+ n1 n2))
        (display " es mayor que 10")
       ); Fin begin por True (Verdad)
      (begin
        (display (+ n1 n2))
        (display " no es mayor que 10")
       ); Fin begin por False (Falso)
   ); Fin IF
); Fin Mayor

;Uso de la Funcion "cond"
; Estructura:
; (cond
; [ (condicion 1) (respuesta_condicion 1) ]
; [ (condicion 2) (respuesta_condicion 2) ]
; ...
; [ (condicion n) (respuesta_condicion n) ]
; (else (respuesta_flaso) )
; ) Fin del cond

; Ejercicio Anterior utilizando "cond"
(define (mayor n1 n2)
  (cond
    [(> (+ n1 n2) 10) ; condicion 1
     (begin
       (display (+ n1 n2))
       (display " es mayor que 10")
       ); Fin begin condicion 1
      ]; Fin condicion 1 (n1+n2>10)
    [(= (+ n1 n2) 10) ; condicion 2
     (begin
       (display (+ n1 n2))
       (display " es igual que 10")
       ); Fin begin condicion 2
     ]; Fin condicion 2 (n1+n2=10)
    (else
     (begin
       (display (+ n1 n2))
       (display " es menor que 10")
      ); Fin begin del else
     ); Fin else
   ); Fin cond
); Fin mayor

; Ejemplo 2: Crear una funcion en la que el usuario ingrese un numero y el programa devuelva
; si dicho numero se encuentra entre 1 y 3, de lo contrario imprima que el numero no esta en el
; intervalo de 1 a 3.
(define (intervalo a)
  (cond
    [ (and (>= a 1) (<= a 3)) ;condicion 1
      (display "El numero se encuentra en el intervalo de 1 a 3.")
      ]; Fin condicion 1
    (else
     (display "El numero no se encuentra en el intervalo de 1 a 3.")
     ); Fin del else
    ); Fin cond
 );

; ---- Recursividad ---- o ---- Estructura Repetitiva ----
; Ejemplo 3: se plantea el criterio base y el criterio de
; recursividad, que son los elementos importantes para que haya recursividad.
; si n=0 o n=1  entonces devuelvo  1
; si n>1  entonces devuelvo   n! = Factorial(n) = n * factorial(n-1)
(define (factorial n)
  (if (or (= n 0) (= n 1))
     1
    (* n (factorial (- n 1)))
   ); Fin del IF
)

;Ejemplo 4: Sea la función fibonacci planteada, con su criterio base y criterio de recursividad.
; si n=0  entonces devuelvo  0
; si n=1  entonces devuelvo  1
; si n>1  entonces devuelvo  fibo(n-1) + fibo(n-2)
(define (fibo n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
  (else (+ (fibo (- n 1)) (fibo (- n 2)))
   ); Fin del else
  ); fin del cond
); Fin Fibo


; Ejercicios a Resolver (Practicar)
; Dado un numero natural entre 1 -7, imprimir los números de la semana según el
; numero: 1=Lunes,.. . . . ., 7=Domingo.
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

; Generar los números los números naturales hasta n.
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
; Realizar un programa recursivo para dividir dos números, con restas sucesivas.
(define (divRest a b)
  (if (< a b)
      0
      (+ 1 (divRest (- a b) b))
   )
 )

; Generar la siguiente sumatoria: Sumatoria(i=a,n)---> i
(define (sumatoria1 a n)
  (if (> a n)
      0
      (+ a (sumatoria1 (+ a 1) n))
   )
)

; Generar la siguiente sumatoria: Sumatoria(i=a,n)---> 1 / (i*i) + 1 
(define (sumatoria2 a n)
  (if (> a n)
      0
      (+ (/ 1 (+ (* a a) 1)) (sumatoria2 (+ a 1) n))
   )
)
