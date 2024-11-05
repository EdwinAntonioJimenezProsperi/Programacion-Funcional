#lang racket
; Cadenas ---> CLASE 30/10/2024

; si un dato es una cadena  ---> (string? dato)
; manipular cadenas son: (make-string tamanio caracter)
;              (string caracteres)...

; longitud de una cadena: (string-length cadena) => tamanio de la cadena
; concatrenar cadenas: (string-append cadenas)

; modificar o reemplazar un caracter en la cadena: (string-set! "hola" 2 #\t)
; obtener caracteres de la cadena: (string-ref "Adios" 0) => #\A
; obtener subcadenas: (substring cadena posinicial posfinal-1)

; definicion de variables: (define str(string #\f #\u #\t #\b #\o #\l))  --- donde str es la variable
; comparacion de cadenas: (string=? cadena1 cadena2)
; operador insensible [no diferencia mayusculas de minusculas] para comparar cadenas: (string-ci=? cadena1 cadena2)

; Ejemplo 1 de cadenas

; Escribir un programa que permita generar códigos de usuario por el procedimiento siguiente:
; Tiene que leer el nombre y los dos apellidos de una persona y devolver un código de
; usuario formado por las tres primeras letras del primer apellido, las tres primeras letras
; del segundo apellido y las tres primeras letras del nombre , ejemplo ALEX RUIZ SANCHEZ ,
; debe devolver RUISANALE.

(define (codigo nom ape1 ape2)
  (display (substring nom 0 3))
  (display (substring ape1 0 3))
  (display (substring ape2 0 3))
 )
;(codigo (read-line)(read-line)(read-line))

; Ejemplo 2 de cadenas

; Construir un programa que reciba una cadena y devuelva una cadena equivalente pero
; sin las vocales.

(define (sinvocals cad tam pos) ; devuelve la cadena sin vocales, cad referencia a la cadena a evaluar, tam a su tamanio
 (if (= tam pos)
     (display "")
     (begin
       (if (or (char-ci=? (string-ref cad pos) #\a)
               (char-ci=? (string-ref cad pos) #\e)
               (char-ci=? (string-ref cad pos) #\i)
               (char-ci=? (string-ref cad pos) #\o)
               (char-ci=? (string-ref cad pos) #\u)) ; Evalua si es una vocal el caracter en la posicion
            (display "") ;por verdad devuelvo vacio
            (display (string-ref cad pos))
        )
       (sinvocals cad tam (+ pos 1)) ; llamada recursiva
      ) 
   )
  )
(define (principal u) ; esta funcion amplifica el llamado
  (sinvocals u (string-length  u) 0)
 )
;(principal (read-line)) ---->   se usa (read) para leer una cadena entre comillas ("")
; se usa (read-line) para leer una cadena sin comillas 