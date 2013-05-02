;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-beginner-reader.ss" "deinprogramm")((modname variablen) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
(define x 3)
(define breite 5)
(define hoehe 7)

(+ x 6)
(+ breite hoehe)

(- (+ breite 
      hoehe) 
   x)

(- x (+ breite hoehe))