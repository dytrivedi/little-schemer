(load "atom.scm")
(load "operator.scm")
(load "1st-sub-exp.scm")
(load "2nd-sub-exp.scm")
(load "oplus.scm")
(load "ocross.scm")
(load "expt.scm")
(define value
  (lambda (nexp)
    (cond
      ((atom? nexp) nexp)
      ((eq? (operator nexp) '+) (o+ (value (1st-sub-exp nexp)) (value (2nd-sub-exp nexp))))
      ((eq? (operator nexp) '*) (o* (value (1st-sub-exp nexp)) (value (2nd-sub-exp nexp))))
      (else
        (expt (value (1st-sub-exp nexp)) (value (2nd-sub-exp nexp)))))))
