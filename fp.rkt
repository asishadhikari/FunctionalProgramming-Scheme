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
				
		        )
                )
         )
)
		


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



;solution to question 4:

;involves finding smalles element and comparing, so implement in two separate functions
;since it is given that nested lists are not used, conditional to handle it is not written 
(define (smallest L)
	(cond
		;not really required because min-above-min handles it too. Also 99999999 used to signify null
		((null? L) 99999999)
		
		;if not number, return the smallest from the remaining list
		((not(number?(car L))) (smallest (cdr L)))
		
		;if the current element is smaller than the rest of the list, return the current element
		((<(car L) (smallest (cdr L))) (car L))
		(else (smallest (cdr L)))
	)
)

(define (next-smallest L1 current-minL1 current-minL2)
	(cond
	;if L1 becomes null, return 0
	((null? L1) '())
	
	;if the first element is smaller then smallest value from cdr L1 return the latter	
	(>((smallest (cdr L1)) (car L1)) (smallest (cdr L1)))
	
	;if the first element is larger than the smallest value from cdr L1 return first element 
	(<((smallest (cdr L1)) (car L1)) (car L1))
	
	;if first element is not the second most large value, goto next round
	(else (next-smallest ((cdr L1) floor-val)))
	
	)
)

(define (min-above-min L1 L2)
	(cond
		;#f if L1 null and L2 not null
		((null? L1) (null? L2))
		
		;return smallest element of L1 if L2 null
		((null? L2) (smallest L1))
		
		;if smallest of L1 is greater than smallest of L2 return smallest L1
		((>(smallest L1) (smallest L2)) (smallest L1))
			
		;if smallest of L1 is smaller than smallest of L2 find the next smallest
		
		(else '()))) ;incomplete
