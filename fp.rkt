;solution to question 1
(define (reverse-general L)
	(cond
		;return empty list if L is empty
		((null? L) '())
		;check if first element in list is list 
                ((list? (car L) 
			(reverse-general car L))
		
