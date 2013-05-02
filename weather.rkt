;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "DMdA-beginner-reader.ss" "deinprogramm")((modname weather) (read-case-sensitive #f) (teachpacks ()) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ())))
; weather consists of sky-state and temperature
; sky-state: "blue", "grey", "cloudy", "sunny"
; temperature: any number

(define-record-procedures weather
  make-weather weather?
  (weather-sky-state weather-temperature))

; make-weather creates a weather record
(: make-weather (string number -> weather))

; weather? checks if object is weather
(: weather? (any -> boolean))

(check-expect (weather? (make-weather "blue" 13)) #t)
(check-expect (weather? 13) #f)
(check-expect (weather? "blue") #f)

(define kiel-sommer (make-weather "sunny" 32))
(weather? kiel-sommer)
(weather-sky-state kiel-sommer)
(weather-temperature kiel-sommer)