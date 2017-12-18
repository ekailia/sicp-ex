(define (less x y) (if (< x y) x y))
(define (big2 x y z) (- (+ x y z)
                        (less x (less y z))))

