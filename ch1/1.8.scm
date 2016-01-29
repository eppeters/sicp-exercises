; Cube root procedure 

(define 
  (improve guess x)
  (/
    (+
      (/
        x
        (square
          guess))
      (* guess 2))
    3))

(define
  (square x)
  (* x x))

(define
  (good-enough? guess next x)
  (<=
    (abs (- guess next))
    (* guess .001)))

(define
  (crt-iter guess x)
  (if
    (good-enough? (improve guess x) guess x)
    (improve guess x)
    (crt-iter (improve guess x) x)))

(define
  (cube-root x)
  (crt-iter 1 x))

