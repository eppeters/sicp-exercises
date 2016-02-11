; Each of the following two procedures defines a method for adding two positive
; integers in terms of the procedures inc, which increments its argument by 1,
; and dec, which decrements its argument by 1.

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(+ 4 5)
(if (= 4 0)
    5
    (inc (+ (dec 4) 5)))

(if (= 4 0)
    5
    (inc (+ 3 5)))

(if (= 4 0)
    5
    (inc (if (= 3 0)
              5
              (inc (+ (dec 3) 5)))))

; ...
; This is not iterative. It is a linearly recursive process (not just procedure). The
; first level of the call stack will not return until the last frame returns at
; the base case (where a is finally 0), meaning the interpreter is keeping one
; stack per a (the var).

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
9

; This is iterative. The reason is that substitution does not produce a larger combination each time we recurse. It stays the same size, meaning the substitution method easily reveals that this way does not require the storage of a call stack. 

; Using the substitution model, illustrate the process generated by each
; procedure in evaluating (+ 4 5).
; Are these processes iterative or recursive?)

