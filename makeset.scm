(load "multirember.scm")
(define makeset
  (lambda (lat)
    (cond
      ((null? lat) '())
      (else
        (cons (car lat) (makeset (multirember (car lat) (cdr lat))))))))
