(define
  (pascal row col)
  (if
    (or
       (= col 0)
       (=
         (- col 1)
         row))
     1
     (+
       (pascal
         (- row 1)
         col)
       (pascal
         (- row 1)
         (- col 1)))))

