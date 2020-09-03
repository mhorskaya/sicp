#lang sicp
(define (p) (p))

(define (test x y) 
  (if (= x 0) 
      0 
      y))

(test 0 (p))

;in applicative-order evaluation (p) will be evaluated forever.
;(test 0 (p))
;(test 0 (p))
;(test 0 (p))
;...

;in normal-order evaluation, expression will be expanded to
;(if (= 0 0) 0 (p))
;(if #t 0 (p))
;(p) won't be evaluated and result will be 0.