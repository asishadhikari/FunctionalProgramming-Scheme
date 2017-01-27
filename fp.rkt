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
		((number? (car L)) (+ (sum-up-numbers-simple (cdr L)) (car L)))
		
		;else, the element is not a number, just sum remaining element in list 
		(else (+ (sum-up-numbers-simple (cdr L)) 0))
	)
)		



;solution to question 3:

(define (sum-up-numbers-general L)
	(cond
	;conditions to be evaluated are:
		;list is empty  then return 0
		((null? L) 0)
		
		;first element is list, then analyse recursive value of the element and add
			;with the recursed value of cdr(L)
		((list? (car L)) (+ (sum-up-numbers-general (car L)) (sum-up-numbers-general (cdr L))))
		
		;if the first element is not number, evaluate cdr L and add with 0
		((not(number? (car L))) (+ (sum-up-numbers-general (cdr L)) 0))
		
		;if number, then add the sum of cdr L and car L
		(else (+ (sum-up-numbers-general (cdr L)) (car L)))
         )
)	  
