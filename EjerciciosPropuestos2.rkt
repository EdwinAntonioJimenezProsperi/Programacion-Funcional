#lang racket
; Continuacion del archivo EjerciciosPropuestos.rkt

; GUIA 5: Cadenas

; 2) Construir una funcion que reciba un parametro, si el parametro es un caracter alfabetico
;    determinar si esta en minusculas y pasarlo a mayusculas, y retornar este valor.
;    Hacer lo mismo en caso contrario.   (#\A   #\a)
(define (convertir c)
  (if (char? c)
      (begin 
        (cond
          [(char-lower-case? c) (char-upcase c)] ; convierte el minuscula a mayuscula
          [(char-upper-case? c) (char-downcase c)] ; convierte el mayuscula a minuscula
          )
        )
      (display "No es un Caracter")
    )
)

; 3) Realice un programa que pida un numero y saque por pantalla su tabla de sumas (del a hasta 10)
(define (tablas n cont)
  (if (= cont 10)
      (display (string-append (number->string n) " + " (number->string cont) " = " (number->string (+ n cont))))
      (begin
        (display (string-append (number->string n) " + " (number->string cont) " = " (number->string (+ n cont))))
        (display #\newline)
        (tablas n (+ cont 1))
       )
   )
 )
;(define (tabla n)
;  (tablas n 0)
; )

; 4) Construir una funcion que reciba un parametro, si el parametro es un caracter devolver
;    el numero que corresponda en la tabla del codigo ASCII y si es numero devolver el caracter que
;    corresponda en la tabla.
;    Nota: la funcion (number? n), retorna verdadero si n es un numero y falso de lo contrario.
;                              (#\A   #\a)
(define (codAs c)
  (cond
    [(char? c) (char->integer c)]
    [(number? c) (integer->char c)]
    (else
     (display "ERROR!!")
     )
   )
 )


; GUIA 6: Vectores

; 1) Construir una funcion que reciba una cadena y la devuelva invertida.

; utilizando listas
(define (invertir cad)
  (list->string(reverse(string->list cad)))
 )
; Sin utilizar listas


; 2) Construir una funcion que reciba una cadena y devuelva cuantas vocales tiene.
(define (contVocal cad)
  (cont cad 0) 
 )
(define (cont cad pos)
  (if (= pos (string-length cad))
      0
      (if (or (char-ci=? (string-ref cad pos) #\a)
              (char-ci=? (string-ref cad pos) #\e)
              (char-ci=? (string-ref cad pos) #\i)
              (char-ci=? (string-ref cad pos) #\o)
              (char-ci=? (string-ref cad pos) #\u))
          (+ 1 (cont cad (+ pos 1)))
          (+ 0 (cont cad (+ pos 1)))
       )
   )
 )