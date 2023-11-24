(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 15
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 15
  (define (helper index so-far sb)
  (cond ((null? sb)
          so-far)
        ((null? so-far)
          (helper (+ index 1) (cons (cons index (cons (car sb) nil)) nil) (cdr sb))
        )
        ((null? nil) 
          (helper (+ index 1) (append so-far (cons (cons index (cons (car sb) nil)) nil)) (cdr sb) )
        )
  )
  
)
(helper 0 nil s)
)
  ; END PROBLEM 15

;; Problem 16

;; Merge two lists S1 and S2 according to ORDERED? and return
;; the merged lists.
(define (merge ordered? s1 s2)
  ; BEGIN PROBLEM 16
  (define (helper so-far sa sb)
    (cond 
          ((and (null? sa) (null? sb))
            so-far)
          ((null? sa)
            (helper (append so-far (cons (car sb) nil)) sa (cdr sb)))
          ((null? sb)
            (helper (append so-far (cons (car sa) nil)) (cdr sa)  sb))
        ((null? so-far)
          (cond 
            ((ordered? (car sa) (car sb))
              (helper (cons(car sa) nil) (cdr sa) sb)
            )

            ((null? nil)
              (helper (cons(car sb) nil) sa (cdr sb))
            )
          ))
        ((ordered? (car sa) (car sb))
          (helper (append so-far (cons (car sa) nil))  (cdr sa) sb) )
        ((null? nil)
          (helper (append so-far (cons (car sb) nil)) sa (cdr sb)))
        )
      )
  (helper nil s1 s2)
  )
  
  ; END PROBLEM 16

;; Optional Problem

;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN OPTIONAL PROBLEM
         'replace-this-line
         ; END OPTIONAL PROBLEM
         )
        ((quoted? expr)
         ; BEGIN OPTIONAL PROBLEM
         'replace-this-line
         ; END OPTIONAL PROBLEM
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN OPTIONAL PROBLEM
           'replace-this-line
           ; END OPTIONAL PROBLEM
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN OPTIONAL PROBLEM
           'replace-this-line
           ; END OPTIONAL PROBLEM
           ))
        (else
         ; BEGIN OPTIONAL PROBLEM
         'replace-this-line
         ; END OPTIONAL PROBLEM
         )))

; Some utility functions that you may find useful to implement for let-to-lambda

(define (zip pairs)
  'replace-this-line)
