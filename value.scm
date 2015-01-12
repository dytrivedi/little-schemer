(load "atom.scm")
(load "operator.scm")
(load "1st-sub-exp.scm")
(load "2nd-sub-exp.scm")
(load "atomtofunction.scm")
(define value
  (lambda (nexp)
    (cond
      ((atom? nexp) nexp)
      (else
        ((atom-to-function (operator nexp)) (value (1st-sub-exp nexp)) (value (2nd-sub-exp nexp)))))))
