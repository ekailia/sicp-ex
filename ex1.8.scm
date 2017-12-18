(define (cub3-iter guess x)
  (if (good-enough? guess x)
      guess
      (cub3-iter (improve guess x)
                 x)))

(define (improve y x)
        (/ (+ (/ x (* y y)) (* 2 y)) 3.0))

(define (good-enough? guess x)
        (< (abs (- (expt guess 3) x)) 0.0001))

(define (cub3 x)
        (cub3-iter 1.0 x))

(define (cub3short x)
  (define (good? y)
     (< (abs (- (expt y 3) x)) 0.0001))
  (define (improve y)
     (/ (+ (/ x (* y y)) (* 2 y)) 3.0))
  (define (cub3-short-iter y)
    (if (good? y)
        y
        (cub3-short-iter (improve y))))
  (cub3-short-iter 1.0))
