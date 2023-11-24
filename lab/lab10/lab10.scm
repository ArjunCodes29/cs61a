(define (make-adder num)
    (lambda (inc)(+ inc num)))

(define (composed f g) 
    (lambda (x) (f (g x))))

(define (my-filter pred s) 
    ; recursive
    ; helper keeps track of a new list and the origanl list as it keeps getting shorter
    ; if s is nil = use null? for this
    ; to recuse down i can use cdr
    ; need to use ifs and all to figure this out
    ; use define and quote form to build the list '( 1 3 5 ) 7 
    (define (helper new old)
        (cond
            ((null? old)
                    new)
            ((pred (car old))
                   (helper (append new (list (car old))) (cdr old)))
            ((null? nil)
                    (helper new (cdr old)))
            
               
        )
        
    )
    (helper '() s)
)


(define (exp b n)
  (define (helper  n so-far) 
      (if (= n 0)
          so-far
          (helper (- n 1)(* b so-far)))
     )
  (helper n 1))

(define (interleave lst1 lst2) 'YOUR-CODE-HERE)

(define (square n) (* n n))

(define (pow base exp) 'YOUR-CODE-HERE)
