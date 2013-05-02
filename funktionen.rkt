;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-beginner-reader.ss" "deinprogramm")((modname funktionen) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
(define nothing
  (lambda (x)
    x))

(define add
  (lambda (x y)
    (+ x y)))

(define subtract
  (lambda (x y)
    (- x y)))

(define test
  (lambda (x y)
    (+ x (+ y (- x y)))))

(define x 4)

(define zweiter-test
  (lambda (y)
    (+ x y)))

(define multiply
  (lambda (x y)
    (* x y)))

(define divide
  (lambda (x y)
    (/ x y)))

