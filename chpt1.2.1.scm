(define (f1 n)
  (if (= n 1)
      1
      (* n (f1 (- n 1)))))

(define (f2 n)
  (f2-iter 1 1 n))

(define (f2-iter prod count max-count)
  (if (> count max-count)
      prod
      (f2-iter (* prod count) (+ count 1) max-count)))

(define (f3 n)
  (define (f3-iter prd cnt)
    (if (> cnt n)
        prd
        (f3-iter (* prd cnt) (+ cnt 1))))
  (f3-iter 1 1))

