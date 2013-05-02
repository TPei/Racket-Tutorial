;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-beginner-reader.ss" "deinprogramm")((modname fallunterscheidungen2) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
; state-of-aggregation checks temperature
; and creates output "gasenous", "liquid" or "solid"
; temperature >= 100 -> "gasenous"
; 100 > temperature > 0 -> "liquid"
; temperature <= 0 -> "solid"

(: state-of-aggregation (number -> string))

(check-expect (state-of-aggregation 110) "gasenous")
(check-expect (state-of-aggregation 10) "liquid")
(check-expect (state-of-aggregation -10) "solid")
(check-expect (state-of-aggregation 100) "gasenous")
(check-expect (state-of-aggregation 0) "solid")

(define state-of-aggregation
  (lambda (temperature)
    (cond
      ((<= temperature 0) "solid")
      ((>= temperature 100) "gasenous")
      (else "liquid"))))

; divide one number by another
(: divide (number number -> any))
(define divide
  (lambda (x y)
    (if (= y 0) 
        "Division durch 0 nicht durchfuehrbar" 
        (/ x y))))

(check-expect (divide 9 3) 3)

(divide 3 0)
(divide 9 3)