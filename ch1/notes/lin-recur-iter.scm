; Follow the execution pattern of this linearly recursive procedure using the
; substitution model of evaluation

(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))

; Evaluate it for 6 as an example
(factorial 6)

; Replace factorial with its definition, substituting 6 for the value of n
(if (= 6 1)
  1
  (* 6 (factorial (- 6 1))))

; Evaluate the special form if in the exceptional way
(* 6 (factorial (- 6 1)))

; Evaluate using applicative evaluation, meaning evalute the operands first and then apply the procedure
(* 6 (factorial 5))

(* 
  6 
  (if (= 5 1)
    1
    (* 5 (factorial (- 5 1)))))

(* 6
   (* 5 (factorial (- 5 1))))

(* 6
   (* 5 (factorial 4))))

; ...

(* 6
   (* 5
      (* 4
        (* 3
           (* 2
              1)))))


; Follow the execution pattern of this iterative procedure using the
; substitution model of evaluation
(define (factorial n)
  (fact-iter 1 1 n))


(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))

(factorial 6)

(fact-iter 1 1 6)

(if (> 1 6)
      1
      (fact-iter (* 1 1)
                 (+ 1 1)
                 6))

(fact-iter (* 1 1)
           (+ 1 1)
           6)

(fact-iter 1 2 6)

(if (> 2 6)
      1
      (fact-iter (* 2 1)
                 (+ 2 1)
                 6))

(fact-iter (* 2 1) (+ 2 1) 6)

(fact-iter 2 3 6)


