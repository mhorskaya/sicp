#lang sicp
(define (new-if predicate 
                then-clause 
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

;both arguments will be evaluated before applying new-if procedure.
;this causes sqrt-iter method to be evaluated recursively.

;new-if
;..sqrt-iter
;....new-if
;......sqrt-iter
;...............