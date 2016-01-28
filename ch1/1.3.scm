; Define a procedure that takes 3 numbers as arguments and returns the sum of the squares of the two larger numbers

; 1. 3 possible combinations of maxes
; 2. for each one, get the sum of squares for them

; Determine whether the number is a max (not the bottom)

(define 
  (leastOf3 x y z)
  (cond
    ((and (< x y) (< x z)) x)
    ((and (< y x) (< y z)) y)
    (else z))
)

(define
  (oneOf2Highest t x y z)
  (not (= t (leastOf3 x y z)))
)

(define
  (are2Highest t1 t2 x y z)
  (and (oneOf2Highest t1 x y z) (oneOf2Highest t2 x y z))
)

(define
  (square x)
  (* x x)
)

(define
  (sumSquares x y)
  (+ (square x) (square y))
)

(define
  (sumSquaresOf2Highest x y z)
  (cond 
    ((are2Highest x y x y z) (sumSquares x y))
    ((are2Highest x z x y z) (sumSquares x z))
    ((are2Highest y z x y z) (sumSquares y z)))
)

(sumSquaresOf2Highest 1 2 3) ; 2^2 + 3^2 = 4 + 9 = 13
(sumSquaresOf2Highest 13 9 3) ; 13^2 + 9^2 = 169 + 81
