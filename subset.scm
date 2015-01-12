(load "member.scm")
(define subset?
  (lambda (set1 set2)
    (cond
      ((null? set1) #t)
      (else
        (and (member? (car set1) set2) (subset? (cdr set1) (cdr set2)))))))
