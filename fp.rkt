;solution to question 1
(define (reverse-general L)
	(cond
		;return empty list if L is empty
		((null? L) '())
		;check if first element in list is list 
                ((list? (car L)) 
			;add last part of list to front and move the front to last
			(cons	
				(reverse-general (cdr L))
 				(reverse-general (car L))                      
                         )		
                 )
		
               ;if an atomic element
		(else
			(append
				; append the first element to the end
				(reverse-general (cdr L))
				(list (car L))
				
		))))
		


;solution to question 2:

(define (sum-up-numbers-simple L)
	(cond
		((null? L) 0)
		((not (list? L)) 0)
		((list? (car L)) 0)

