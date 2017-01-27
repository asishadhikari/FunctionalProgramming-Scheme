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
		;if element is null, evaluate to 0
		((null? L) 0)
		
		;if element is a list, just sum the remaining part of the list
		((list? (car  L)) (+ (sum-up-numbers-simple (cdr L)) 0 ))
		
		;if element is a number, add it with the rest of the list recursively
		((number? (car L)) (+ (sum-up-numbers-simple (cdr L)) (car L))
		
		;else, the element is not a number, just sum remaining element in list 
		(else (+ (sum-up-numbers-simple (cdr L)) 0))
	)
)		

