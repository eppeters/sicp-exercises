(define (p) (p))

(define
  (test x y)
  (if (= x 0) 0 y)
)

(test 0 (p))

; applicative-order (what the scheme interpreter uses)

(test 0 (p))
(test 0 (p))
(test 0 (p))
; ... (infinite recursion)

; normal-order

(test 0 (p))
(if (= 0 0) 0 (p))
0
; returns 0 because if is evaluated the same in both methods, and returns when true is found
; since true is found when evaluating the first operand, the procedure returns
; the value at the second operand position, which is 0
