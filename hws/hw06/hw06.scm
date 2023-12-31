(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (interleave lst1 lst2) 
   (define (helper lst1 lst2 so-far flag)
    (cond 
        ((and (null? lst1) (null? lst2)) so-far)
        ((null? lst1)
            (cond ((null? so-far)
            (helper nil (cdr lst2)   (cons (car lst2) nil)  0))
            ((null? nil)
            (helper nil (cdr lst2) (append so-far (cons (car lst2) nil))   0))
            ))
        ((null? lst2)
            (cond ((null? so-far)
               (helper (cdr lst1) nil  (cons (car lst1) nil)  0) )
               ((null? nil)
               (helper (cdr lst1) nil (append so-far (cons (car lst1) nil))  0)))
            )
        ((= flag 1)
            (helper (cdr lst1) lst2 (append so-far (cons (car lst1) nil)) 0))
        ((= flag 0)
            (helper lst1 (cdr lst2) (append so-far (cons (car lst2) nil)) 1)
            )
    )
   )
   (helper lst1 lst2 nil 1)
)
(define (my-filter pred lst) 
 (define (helper lst so-far)
    (cond ((null? lst)
            so-far)
        ((pred (car lst)
        ) (helper (cdr lst)  (append so-far (cons (car lst) nil)))

        )
        ((null? nil) 
        (helper (cdr lst) so-far)
        )
    
    
    )
 )
 (helper lst nil)
)


(define (concatenate s) 
    (define (conc-tail lsts so-far)
    (cond ((null? lsts)
    so-far)
    ((null? nil)
    (conc-tail (cdr lsts) (append so-far (car lsts)))
    )
    ))
    (conc-tail s nil)
)
