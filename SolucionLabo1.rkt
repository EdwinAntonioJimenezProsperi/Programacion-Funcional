#lang racket

; Laboratorio 1 ---> Programacion Funcional INF-319 ( 11/ 11 /2024 )

; Ejercicio 1;
; Construir una funcion que reciba una cadena y la devuelva invertida

; Funcion para invertir una cadena
(define (invCad cad n)
    (if (<= n 0)
        (newline)
        (begin
          (display (string-ref cad (- n 1)))
          (invCad cad (- n 1))
        )
    )
)

; Funcion solucion
(define (solucion1)
  (begin
    (display "Ingrese la cadena a invertir en formato cadena: ")
    (display #\newline)
    (define cad (read))
    (if (string? cad)
        (begin
          (display #\newline)
          (display " --> La Cadena (")
          (display cad)
          (display "), invertida es: ")
          (invCad cad (string-length cad))
          (Verificar)
        )
        (begin
          (display "Debe ser una cadena, entre comillas dobles !!!")
          (display #\newline)
          (solucion1)
        )
    )
  )
)

; Verificar si desea continuar en la solucion1
(define (Verificar)
  (begin
    (display #\newline)
    (display "Continuar (1)SI/(2)NO ")
    (define op (read))
    (if (number? op)
        (begin
          (if (= op 1)
              (solucion1)
              (if (= op 2)
                  (Menu)
                  (Verificar)
              )
           )
         )
        (Verificar)
    )
  )
)
;---------------------------------------
; Ejercicio 2
; Construir un programa que reciba un vector de enteros
; de enteros y obtenga el promedio de los numeros
; del vector (recursivo).

; Funcion para sumar los elementos del vector
(define (suma v n)
  (if (>= n 0)
      (+ (vector-ref v n) (suma v (- n 1)))
      0
  )
)

; Funcion para obtener el promedio
(define (promedio vec)
  (begin
    (display " --> El promedio del vector (")
    (display vec)
    (display "), es: ")
    (display #\newline)
    (display "--> En decimal: ")
    (display (/ (suma vec (- (vector-length vec) 1)) (exact->inexact (vector-length vec))));FLOTANTE
    (display #\newline)
    (display "--> En fraccion: ")
    (display (/ (suma vec (- (vector-length vec) 1)) (vector-length vec))) ;FRACCION
  )
)

; Funcion lectura tamaño, ademas de modificar datos
; del vector con los nuevos ingresados
(define (leerVector)
  (begin
    (display "Tamaño del vector: ")
    (define tamanioVector (read))
    (define myVector(make-vector tamanioVector))
    (modificarVector myVector (- (vector-length myVector) 1))
    (promedio myVector)
  )
)

; Funcion lectura de datos del vector
(define (leerDato)
  (begin
    (display "Ingrese el dato Numerico: ")
    (read)
  )
)

; Metodo para modificar cada posicion del vector
; con el nuevo dato
(define (modificarVector vec n)
  (if(< n 0)
     (display #\newline)
     (begin
       (modificarVector vec (- n 1))
       (vector-set! vec n (leerDato))
     )
  )
)
; Verificar si desea continuar en la solucion2
(define (Verificar2)
  (begin
    (display #\newline)
    (display "Continuar (1)SI/(2)NO ")
    (define op (read))
    (if (number? op)
        (begin
          (if (= op 1)
              (solucion2)
              (if (= op 2)
                  (Menu)
                  (Verificar2)
              )
           )
         )
        (Verificar2)
    )
  )
)

; Solucion2
(define (solucion2)
  (begin
    (leerVector)
    (Verificar2)
  )
)

;--------------------------------------------------------------
; Ejercicio 3
; Generar la siguiente sumatoria: sumatoria(i=a,n) = 1 / (a^3 + 1)

; Funcion solucion3
(define (sumatoria a n)
  (if (> a n)
      0
      (+ (/ 1 (+ (* a a a) 1)) (sumatoria (+ a 1) n))
   )
 )

; Verificar si desea continuar en la solucion3
(define (Verificar3)
  (begin
    (display #\newline)
    (display "Continuar en (1)SI/(2)NO ")
    (define op (read))
    (if (number? op)
        (begin
          (if (= op 1)
              (solucion3)
              (if (= op 2)
                  (Menu)
                  (Verificar3)
              )
           )
         )
        (Verificar3)
    )
  )
)

; Solucion3
(define (solucion3)
  (begin
    (display "Ingrese el intervalo inicial: ")
    (define num1 (read))
    (display "Ingrese el intervalo final: ")
    (define num2 (read))
    (if (and (and (number? num1) (>= num1 0)) (and (number? num2) (>= num2 0)))
        (begin
          (display "--> En decimal: ")
          (display (exact->inexact (sumatoria num1 num2)));FLOTANTE
          (display #\newline)
          (display "--> En fraccion: ")
          (display (sumatoria num1 num2)) ;FRACCION
          (Verificar3)
         )
        (begin
          (display "debe ingresar valores enteros y positivos!!!")
          (newline)
          (solucion3)
         )
     )
  )
)

;--------------------------------------------------------------
; Ejercicio 4
; escriba un programa que cuente el numero de vocales
; y consonates de una cadena

; Funcion contar vocales
(define (ContarVocales cad n)
  (if (< n 0)
      0
      (if (or (char-ci=? (string-ref cad n) #\a)
              (char-ci=? (string-ref cad n) #\e)
              (char-ci=? (string-ref cad n) #\i)
              (char-ci=? (string-ref cad n) #\o)
              (char-ci=? (string-ref cad n) #\u)
          )
          (+ 1 (ContarVocales cad (- n 1)))
          (ContarVocales cad (- n 1))
      )
      
  )
)
; Funcion contar consonantes, con el codigo ascii
(define (ContarConsonantes cad n)
  (if (< n 0)
      0
      (if (or (char-ci=? (string-ref cad n) #\a)
              (char-ci=? (string-ref cad n) #\e)
              (char-ci=? (string-ref cad n) #\i)
              (char-ci=? (string-ref cad n) #\o)
              (char-ci=? (string-ref cad n) #\u)
          )
          (ContarConsonantes cad (- n 1))
          (if (or (and (>=(char->integer (string-ref cad n)) 65)
                   (<=(char->integer (string-ref cad n)) 90))
                  (and (>=(char->integer (string-ref cad n)) 97)
                   (<=(char->integer (string-ref cad n)) 122)
                  )
              )
              (+ 1 (ContarConsonantes cad (- n 1)))
              (ContarConsonantes cad (- n 1))
          )
      ) 
  )
)
; Verificar si desea continuar en la solucion4
(define (Verificar4)
  (begin
    (display #\newline)
    (display "Continuar (1)SI/(2)NO ")
    (define op (read))
    (if (number? op)
        (begin
          (if (= op 1)
              (solucion4)
              (if (= op 2)
                  (Menu)
                  (Verificar4)
              )
           )
         )
        (Verificar4)
    )
  )
)

; Solucion4
(define (solucion4)
  (begin
    (display "Igrese la cadena entre comillas dobles")
    (display #\newline)
    (define cadena (read))
    (if(string? cadena)
       (begin
         (display #\newline)
         (display "La cadena: (")
         (display cadena)
         (display "), tiene:")
         (display #\newline)
         (display "   --> [")
         (display (ContarVocales cadena (- (string-length cadena) 1)))
         (display "], vocales")
         (display #\newline)
         (display "   --> [")
         (display (ContarConsonantes cadena (- (string-length cadena) 1)))
         (display "] Consonantes")
         (display #\newline)
         (Verificar4)
       )   
       (begin
         (display "Debe ser una cadena, entre comillas dobles !!!")
         (display #\newline)
         (solucion4)
       )
    )
  )
)

;--------------------------------------------------------------
; Menu interactivo
(define (Menu)
  (begin
    (MuestraOpciones)
    (define op (read))
    (if (number? op)
        (begin
          (cond
            [(= op 1)(solucion1)]
            [(= op 2)(solucion2)]
            [(= op 3)(solucion3)]
            [(= op 4)(solucion4)]
            (else (begin
                    (if (= op 0)
                        (display "ADIOS...")
                        (begin
                          (display " Solo opciones entre 1 - 4 !!!")
                          (Menu)
                        )
                    )
                  )
             )
          )
        )
        (begin
          (display "Solo opciones entre 1 - 4 !!!")
          (Menu)
        )
    )
  )
)

; Para mostrar las opciones
(define (MuestraOpciones)
  (begin
    (display #\newline)
    (display "=========================================")
    (display #\newline)
    (display "        --- Elija una opcion ---")
    (display #\newline)
    (display "=========================================")
    (display #\newline)
    (display " (1)...Función que invierte una cadena.")
    (display #\newline)
    (display " (2)...Construye Vector de enteros, y")
    (display #\newline)
    (display "       obtiene el promedio.")
    (display #\newline)
    (display " (3)...Generar la sumatoria (1/i^3 + 1).")
    (display #\newline)
    (display " (4)...Cuenta el numero de Vocales y")
    (display #\newline)
    (display "       Consonantes de una cadena.")
    (display #\newline)
    (display " (0)...Para Salir.")
    (display #\newline)
    (display "=========================================")
    (display #\newline)
  )
)






