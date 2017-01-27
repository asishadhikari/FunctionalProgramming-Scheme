;solution to question 1
(define (reverse-general L)
	(cond
		((null? L) '())
		((not(list? L)) (DISPLAY "NOT A LIST!!"))
