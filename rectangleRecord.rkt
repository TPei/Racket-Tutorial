;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-beginner-reader.ss" "deinprogramm")((modname rectangleRecord) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
; rectangles consist of width and height
; rectangle-width is any natural number
; rectangle-heigth is any natural number

(define-record-procedures rectangle
  make-rectangle rectangle?
  (rectangle-width rectangle-height))

; make-rectangle creates a rectangle record
(: make-rectangle (natural natural -> rectangle))

; rectangle? checks if rectangle
(: rectangle? (any -> boolean))

(define rectang (make-rectangle 3 2))

(check-expect (rectangle? (make-rectangle 3 2)) #t)
(check-expect (rectangle? 34) #f)
(check-expect (rectangle-width rectang) 3)
(check-expect (rectangle-height rectang) 2)

; rectangle-area calculates the area of a rectangle
(: rectangle-area (rectangle -> natural))
(define rectangle-area
  (lambda (rect)
    (* (rectangle-width rect) 
       (rectangle-height rect))))

(check-expect (rectangle-area rectang) 6)

; rectangle-perimeter calculates the perimeter of a rectangle
(: rectangle-perimeter (rectangle -> natural))
(define rectangle-perimeter
  (lambda (rect)
    (* 2 
       (+ (rectangle-width rect) 
            (rectangle-height rect)))))

(check-expect (rectangle-perimeter rectang) 10)

; rectangle-is-square? checks if rectangle is square
(: rectangle-is-square? (rectangle -> boolean))
(define rectangle-is-square?
  (lambda (rect)
    (if (= (rectangle-width rect) 
          (rectangle-height rect)) 
        #t
        #f)))

(check-expect (rectangle-is-square? rectang) #f)
(check-expect (rectangle-is-square? (make-rectangle 4 4)) #t)