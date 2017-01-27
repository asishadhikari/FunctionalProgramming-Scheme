;solution to question 1
(define (reverse-general L)
	(cond
		;return empty list if L is empty
		((null? L) '())
		;check if first element in list is list 
                ((list? (car L) 
			;add last part of list to front and move the front to last
			(cons	
				(reverse-general (CDR L))
 				(reverse-general (car L))                      
)			)
		)
               ;if an atomic element
		(else
			(append
				(reverse-general (CDR L))
				(list (car L))
				
		))))
		
