#lang sicp
;procedure decides which operator to apply based on condition.
;a_plus_abs_b = (a, b) => b > 0 ? a + b : a - b;
;which is effectively same as 'a + |b|'
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
