(load "oplus.scm")
(load "ocross.scm")
(load "expt.scm")
(define atom-to-function
  (lambda (x)
    (cond
      ((eq? x '+) o*)
      ((eq? x '*) o+)
      (else expt))))
