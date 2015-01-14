(define multirember&co
  (lambda (a lat col)
    (cond
      ((null? lat)
       (col '() '()))
      ((eq? (car lat) a)
       (multirember&co a (cdr lat)
         (lambda (newlat seen)
           (col newlat (cons (car lat) seen)))))
      (else
       (multirember&co a (cdr lat)
         (lambda (newlat seen)
           (col (cons (car lat) newlat) seen)))))))

(define last-friend
  (lambda (x y)
    (length x)))

(multirember&co 'tuna '(strawberries tuna and swordfish) last-friend)

(multirember&co 'tuna '(tuna and swordfish)
             (lambda (newlat seen)
               (last-friend (cons 'strawberries newlat) seen))
         )

(multirember&co 'tuna '(and swordfish)
             (lambda (newlat seen)
               (lambda (newlat seen)
                 (last-friend (cons 'strawberries newlat) seen)
                 ) newlat (cons 'tuna seen))
         )

(multirember&co 'tuna '(swordfish)
             (lambda (newlat seen)
               (lambda (newlat seen)
                 (lambda (newlat seen)
                   (last-friend (cons 'strawberries newlat) seen)
                 ) newlat (cons 'tuna seen)
               ) (cons 'and newlat) seen)
         )

((lambda (newlat seen)
  (lambda (newlat seen)
    (lambda (newlat seen)
      (lambda (newlat seen)
        (last-friend (cons 'strawberries newlat) seen)
      ) newlat (cons 'tuna seen)
    ) (cons 'and newlat) seen
  ) (cons 'swordfish newlat) seen) '() '())

((lambda (newlat seen)
    (lambda (newlat seen)
      (lambda (newlat seen)
        (last-friend (cons 'strawberries newlat) seen)
      ) newlat (cons 'tuna seen)
    ) (cons 'and newlat) seen
  ) '(swordfish) '())

((lambda (newlat seen)
  (lambda (newlat seen)
    (last-friend (cons 'strawberries newlat) seen)
  ) newlat (cons 'tuna seen)
) '(and swordfish) '())

((lambda (newlat seen)
  (last-friend (cons 'strawberries newlat) seen)
) '(and swordfish) '(tuna))

(last-friend '(strawberries and swordfish) '(tuna))

3
