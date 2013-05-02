;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-beginner-reader.ss" "deinprogramm")((modname rekursivFakultaet) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
; factorial calculates the factorial of a natural number
(: factorial (natural -> natural))

(check-expect (factorial 0) 1)
(check-expect (factorial 1) 1)
(check-expect (factorial 6) 720)
(check-expect (factorial 7) 5040)

; 6! = 6*5*4*3*2*1*1
; n! = n * (n-1)!  -> bis n = 1

(define factorial
  (lambda (n)
    (if (= n 0)
        1
        (* n 
           (factorial (- n 1)))))) ; n > 0