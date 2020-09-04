#lang sicp
;the absolute tolerance value 0.001 is too large for small numbers.
;(sqrt (square 0.01)) -> 0.03230844833048122

;and too small for large numbers. loop never stabilizes because of
;the precision of the fractional part never gets smaller than 0.001.
;(sqrt (square 12345678901234567)) -> doesn't finish

;we should use relative tolerance value instead. e.g. (* guess 0.001)

(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2))
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? prev-guess guess x)
  (< (abs (- prev-guess guess))
     (* guess 0.001)))
(define (sqrt-iter prev-guess guess x)
  (if (good-enough? prev-guess guess x)
      guess
      (sqrt-iter guess (improve guess x) x)))
(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))