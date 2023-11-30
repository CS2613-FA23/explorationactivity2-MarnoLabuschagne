#lang racket

(require algorithms)

(define input-file "DataInput.txt")

(define (line-to-list line)
  (map string->number (string-split line ", ")))

(define data-lists-raw '())

(with-input-from-file input-file
  (lambda ()
    (for ([line (in-lines)])
      (let ([numbers (line-to-list line)])
        (set! data-lists-raw (cons numbers data-lists-raw))))))

(define data-lists (take data-lists-raw (- (length data-lists-raw) 0)))

; Display the resulting 2D list
(display "List of lists:")
(display data-lists)
(newline)

; Showcase the Algorithm package List
(define out (open-output-file "DataOutput.txt" #:exists 'replace))
(for ([list data-lists])
  (display "\tList: \t" out)
  (println list out)

  (display "Adjacent-map: " out)
  (println (adjacent-map + list) out)

  (display "Check if Sorted List: " out)
  (println (sorted? list) out)
  (display "Check if Increasing: " out)
  (println (increasing? list) out)

  (display "Init list: " out)
  (println (init list) out)
  (display "Tail list: " out)
  (println (tail list) out)

  (display "List repeated 4 times: " out)
  (println (repeat 4 list) out)

  (display "List split into 2 and sliding 3 right\n for each group: " out)
  (println (sliding list 2 3) out)
  (display "List split into groups of 2: " out)
  (println (chunks-of list 2) out)
  (display "Scan Left, sum elements successively and sort\n in increasing order: " out)
  (println (scanl + list) out)
  (display "Scan Right, sum elements successively and sort\n in decreasing order: " out)
  (println (scanr + list) out)
  (display "Multiply all  elements together: " out)
  (println (product list) out)
  (display "Add all elements together: " out)
  (println (sum list) out)
  (newline out)
  )

(close-output-port out)






(generate 51 *)


(all? '(#t #t #f))
(any? '(#t #t #f))
(sorted? '(1 2 3 5 4))
(increasing? '(1 2 3 4 5))


(replicate '(1 0 3 1) '(a b c d))
(sliding '(1 2 3 4 5) 2 3)
(chunks-of '(1 2 3 4 5 6 7) 2)
(zip '(1 2 3 4) '(5 6 7 8) '(9 10 11 12))
(zip-with + '(1 2 3 4) '(5 6 7 8) '(9 10 11 12))
(repeat 11 '(1 2 3 4 5))


(adjacent-map + '(1 2 3 4 5))
(init '(1 2 3 4 5))
(tail '(1 2 3 4 5))
(scanl + '(1 2 3 4 5))
(scanr + '(1 2 3 4 5))
(product '(1 2 3 4 5))
(sum '(1 2 3 4 5))

(display "Zipping-with lists: ")
(println '('(1 2 3 4) '(5 6 7 8) '(9 10 11 12)))
(display "results: ")
(zip-with + '(1 2 3 4) '(5 6 7 8) '(9 10 11 12))


