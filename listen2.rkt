;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-beginner-reader.ss" "deinprogramm")((modname listen2) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
; lists are:
; 1. empty lists
; 2. nonempty-lists

; empty-list
;(: empty empty-list)
;(: empty? (any -> boolean))

; a nonempty-list (numbers) consists of
; - a number
; - a numlist
(define-record-procedures nonempty-list
  cons cons?
  (first rest))

; a numlist is one of following:
; - a empty list
; - a nonempty-list
(define numlist
  (signature
   (mixed empty-list
          nonempty-list)))

(: cons (number numlist -> nonempty-list))
(: cons? (any -> boolean))
(: first (nonempty-list -> number))
(: rest (nonempty-list -> numlist))

(define list1 (cons 1 (cons 2 empty)))
(define list2 (cons 4 (cons 3 (cons 2 (cons 1 empty)))))
(define prim-list-4 (cons 2 (cons 3 (cons 5 (cons 7 empty)))))

; list-sum sums up all elements of a list
(: list-sum (numlist -> number))

(check-expect (list-sum empty) 0)
(check-expect (list-sum list1) 3)
(check-expect (list-sum list2) 10)
(check-expect (list-sum prim-list-4) 17)

(define list-sum
  (lambda (lis)
    (cond
      ((empty? lis) 0)
      ((cons? lis) (+ (first lis) 
                      (list-sum (rest lis))))
      )))

; list-length returns the length of a list
(: list-length (numlist -> number))

(check-expect (list-length empty) 0)
(check-expect (list-length list1) 2)
(check-expect (list-length list2) 4)
(check-expect (list-length prim-list-4) 4)
