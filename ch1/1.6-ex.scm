(define
  (new-if predicate then-clause else-clause)
  (cond (predicate then-clause) (else else-clause))
)

(define
  (square x)
  (* x x)
)

(define
  (abs x)
  (cond
    ((< x 0) (- x))
    ((> x 0) x)
    (else 0)
  )
)

(define
  (good-enough? guess x)
  (<= (abs (- (square guess) x)))
)

(define
  (average x y)
  (/ (+ x y) 2)
)

(define
  (improve guess x)
  (average guess (/ x guess))
)

(define
  (sqrt-iter guess x)
  (new-if
    (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)
  )
)

(define
  (sqrt x)
  (sqrt-iter 1 x)
)

(sqrt 1)

; Since  new-if is not a special form, the interpreter follows the pattern of
; first evaluating the subexpressions of the new-if procedure definition. This
; means that, even at the step where sqrt-iter should terminate by returning
; the guess at that point, the recursive call to sqrt-iter (the else-clause of
; the new-if), is evaluated. If the special form if were used, and thus
; followed the special pattern of evaluation, not evaluating the else-clause
; unless the predicate evaluated to true, the recursive call would not be made
; on the final step.
