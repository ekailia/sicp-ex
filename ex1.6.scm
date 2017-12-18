;(define (sqrt-iter guess x)
;  (if (good-enough? guess x)
;      guess
;      (sqrt-iter (improve guess x)
;                 x)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))
; Aborting!: maximum recursion depth exceeded
; try (new-if #t (display "good") (display "bad")), 
; will return "badgood"

; try (if #t (display "good") (display "bad"))
; will return "good"

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))


(define (improve guess x)
        (average guess (/ x guess)))

(define (average x y)
        (/ (+ x y) 2.0))

(define (good-enough? guess x)
        (< (abs (- (* guess guess) x)) 0.001))

(define (sqt x)
        (sqrt-iter 1.0 x))

