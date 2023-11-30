#lang racket

(require algorithms)

(adjacent-map + '(1 2 3 4 5))

(all? '(#t #t #f))
(any? '(#t #t #f))
(sorted? '(1 2 3 5 4))
(increasing? '(1 2 3 4 5))

(init '(1 2 3 4 5))
(tail '(1 2 3 4 5))

(generate 51 *)
(repeat 11 '(1 2 3 4 5))

(replicate '(1 0 3 1) '(a b c d))

(sliding '(1 2 3 4 5) 2 3)
(chunks-of '(1 2 3 4 5 6 7) 2)
(zip '(1 2 3 4) '(5 6 7 8) '(9 10 11 12))

(zip-with + '(1 2 3 4) '(5 6 7 8) '(9 10 11 12))
(scanl + '(1 2 3 4 5))
(scanr + '(1 2 3 4 5))
(product '(1 2 3 4 5))
(sum '(1 2 3 4 5))

;the average list derived from all lists
;difference between elements
;analyze list: All true, which are true if all are not true, is it sorted, is it increasing or decreasin, has duplicate elements?
;encode list
;split list into groups; how many groups, are there extra, the lists

(define input-file "DataInput.txt")

(define (line-to-list line)
  (map string->number (string-split line ", ")))

(define data-list '()) ; Initialize an empty list to store lists of numbers

(with-input-from-file input-file
  (lambda ()
    (for ([line (in-lines)])
      (let ([numbers (line-to-list line)])
        (set! data-list (cons numbers data-list))))))

; Display the resulting 2D list
(display "List of lists:")
(display data-list)
(newline)
