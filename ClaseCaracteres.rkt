#lang racket
;Manejo de Caracteres
; Formato:
;   #\caracter  Ejemplo --->  #\a

; Funcion char?
; (char? "ejemplo") verifica si el valor dado es un caracter

; Verificar mediante ASCII los valores de los caracteres:
; (char>? #\A #\a) verifica si el ASCII de 'A' es Mayor que 'a'
; (char=? #\A #\a) verifica si el ASCII de 'A' es Igual que 'a'
; (char<? #\A #\a) verifica si el ASCII de 'A' es Menor que 'a'
; Aplicando sensibilidad, esto quiere decir que A = a sera verdad
; (char-ci=? #\A #\a) es verdad.

; Verificar a que tipo especifica un caracter ya sea numero, espacio en blanco o alfabetico, etc.
; (char-numeric? #\a) nos dara falso ya que 'a' es un caracter alfabetico
; (char-alphabetic? #\A) verdad
; (char-upper-case? #\A) verdad
; (char-lower-case? #\a) verdad
; (char-withespace? #\a)

; convertir caracter a numero y viceversa (ESTE VALOR SERA EN FUNCION DE UN ASCII)
; (char->integer #\N) ---> 78
; (integer->char 78) ----> #\N

; Convertir de mayuscula a minuscula y viceversa
; (char-upcase #\a) de minuscula a mayuscula
; (char-downcase #\A) de mayuscula a minuscula

; Ejemplo 1: Dado un caracter imprimir o mostrar por pantalla una palabra o cadena. 

(define (notas c)
  (cond
    [ (char-ci=? c #\e) 
     (display "Excelente")]
    [ (char-ci=? c #\s)
     (display "Sobresaliente")]
    [ (char-ci=? c #\i)
     (display "Insuficiente")]
    [ (char-ci=? c #\a)
     (display "Aceptable")]
    [ (char-ci=? c #\d)
     (display "Deficiente")]
    (else
     (display "No es nota valida")
     )
    )
 )


; Ejemplo 2: dado un numero imprimir su respectivo valor ascii en caracter hasta el 1024.

(define (Ascii c)
  (if (= c 1024)
      (display (integer->char c)); caso base
      (begin
        (display (integer->char c)) ; imprimir como caracter
        (display " ") ; Imprimo un espacio para separar los caracteres
        (Ascii(+ 1 c)) ; Llamado recursivo, incrementa c en 1
        )
   )
  )
;(Ascii 65)

; Tarea dia Miércoles 23/10/2024:
; Realice un programa que pida un numero y despliegue por pantalla
; su tabla de multiplicar correspondiente hasta el 10.
(define (tabla num m)
  (if (> m 0)
      (begin
        (if (= m 10) ; caso base
            (begin
              (display num)
              (display " X ")
              (display m)
              (display " = ")
              (display (* num m))
              )
            (begin ; Caso Recursivo
              (display num)
              (display " X ")
              (display m)
              (display " = ")
              (display (* num m))
              (display #\newline)
              (tabla num (+ 1 m))
              )
            )
       )
      (display "Error! La tabla debe comenzar desde 1. ")
   )
 )

; codigo mejorado para el ejercicio anterior.
(define (multiplicar num m)
        (if (= m 10) ; caso base
            (begin
              (display num)
              (display " X ")
              (display m)
              (display " = ")
              (display (* num m))
              )
            (begin ; Caso Recursivo
              (display num)
              (display " X ")
              (display m)
              (display " = ")
              (display (* num m))
              (display #\newline)
              (tabla num (+ 1 m))
              )
            )
 )

(define (Tabla n)
  (multiplicar n 1)
 )