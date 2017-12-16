(define (sq x) (* x x))

(define (abs x)
  (cond ((> x 0) x)
	((= x 0) 0)
	((< x 0) (- x))))

(define (abs2 x)
  (cond	((< x 0) (- x))
	(else x)))

(- 9 1)

(define a 3)

(define b (+ a 1))

(= a b)
