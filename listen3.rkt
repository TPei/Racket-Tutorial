;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-vanilla-reader.ss" "deinprogramm")((modname listen3) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
(define list1 (cons 3 (cons 5 empty)))
(define list2 (cons "this" (cons "is" (cons "Sparta" (cons "!" empty)))))
(define list3 (list 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0))

(define prim4 (list 2 3 5 7))

; list-length returns the length of a list
(: list-length ((list-of %a) -> number))

(check-expect (list-length empty) 0)
(check-expect (list-length list1) 2)
(check-expect (list-length list2) 4)
(check-expect (list-length prim4) 4)

(define list-length
  (lambda (lis)
    (cond ((empty? lis) 0)
          ((cons? lis) (+ 1
                          (list-length (rest lis))))
          )))

; concatenate puts a second list at the end of a first
(: concatenate ((list-of %a) (list-of %a) -> (list-of %a)))
(check-expect (concatenate empty list1) list1)
(check-expect (concatenate list1 empty) list1)
(check-expect (concatenate empty empty) empty)
(check-expect (concatenate (list 1 2 3) (list 4 5 6)) (list 1 2 3 4 5 6))
(check-expect (concatenate (list "hello" "world") (list "first" "program")) 
              (list "hello" "world" "first" "program"))

(define concatenate
  (lambda (xs ys)
    (cond ((empty? xs) ys)
          ((cons? xs) (cons (first xs)
                            (concatenate (rest xs) ys)))
          )))

; n-th returns the n-th element of a list (n=0 -> first element)
(: n-th ((list-of %a) natural -> %a))
(check-expect (n-th prim4 0) 2)
(check-expect (n-th (list 1 2 3 4 5) 4) 5)

