; Design a multiplication procedure (* a b) that is logarithmic in b, assuming
; that multiplication is not already available as a primative procedure

(define
  (even? a)
  (= (remainder a 2) 0))

; double and halve are given
(define
  (double a)
  (+ a a))

(define
  (halve a)
  (/ a 2))

(define
  (* a b)
  (cond
    ((= b 1) a)
    ((even? b) (double (* a (halve b))))
    (else (+ a (* a (- b 1))))))
