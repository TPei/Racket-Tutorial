;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-beginner-reader.ss" "deinprogramm")((modname listen) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
; a pair consists of two parts
; a first elemente
; and a rest element
; with the rest element being another pair or empty
(define-record-procedures pair
  make-pair pair?
  (first rest))

; make-pair creates a pair
(: make-pair (any any -> pair))

; pair? checks if any is pair
(: pair? (any -> boolean))

(define p1 (make-pair 4 (make-pair 3 (make-pair 2 (make-pair 1 "empty")))))

; get length of list
(: list-length (pair -> natural))

(check-expect (list-length p1) 4)

(define list-length
  (lambda (lis)
    (if (pair? (rest lis))
        (+ 1 (list-length (rest lis)))
        1)))


; get-element returns the nth element of a list
(: get-element (pair natural -> any))

(check-expect (get-element p1 2) 3)
(check-expect (get-element p1 3) 2)
(check-expect (get-element (make-pair 3 (make-pair "lol" "empty")) 2) "lol")

(define get-element
  (lambda (lis n)
    (element-helper lis n 1)))

(define element-helper
  (lambda (lis n counter)
    (cond
      ((= n counter) (first lis))
      ((pair? (rest lis)) (element-helper (rest lis) n (+ counter 1)))
      (else "Liste zu kurz"))))