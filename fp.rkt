;solution to question 1
(define (reverse-general L)
	(cond
		;return empty list if L is empty
		((null? L) '())
		;check if first element in list is list 
                ((list? (car L) 
			(cons
				(reverse-general (CDR L))
                       )
               (else
			(append
				(reverse-general (CDR L))
				;need an expression for car
				)
		)))
		
