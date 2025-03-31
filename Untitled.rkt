#lang racket

(define (hanoi n rod1 rod2 rod3)
  (if (zero? n) 
      null      
      (begin
        (hanoi (- n 1) rod1 rod3 rod2)  
        (printf "Move disk ~a from ~a to ~a\n" n rod1 rod3)  
        (hanoi (- n 1) rod2 rod1 rod3)))) 

;; Run the function for 5 disks

