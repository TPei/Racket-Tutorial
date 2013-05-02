;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-beginner-reader.ss" "deinprogramm")((modname fallunterscheidungen) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
; our first variable to be added
(define variable 4)

; our second variable to be added
(define second-variable 7)

; procedure to add two number
; add: number number -> number
(: add (number number -> number))
(define add
  (lambda (x y) ; expects two arguments
    (+ x y))) ; adding the argument

(check-expect (add 3 4) 7)
(check-expect (add -3 -4) -7)
(check-expect (add 3 -4) -1)
(check-expect (add -5 10) 5)
(check-expect (add 3 4) 7)

; divide one number by another
(: divide (number number -> any))
(define divide
  (lambda (x y)
    (cond ((= y 0) "Division durch 0")
          (else (/ x y)))))

(check-expect (divide 9 3) 3)

(divide 3 0)
(divide 9 3)
