#lang racket

(define [draw-hangman number-wrong]
  (cond
    ([equal? number-wrong 0]
     (begin
       (printf "-----\n")
       (printf "|   |\n")
       (printf "|\n")
       (printf "|\n")
       (printf "|\n")))
    ([equal? number-wrong 1]
     (begin
       (printf "-----\n")
       (printf "|   |\n")
       (printf "|   0\n")
       (printf "|\n")
       (printf "|\n")))
    ([equal? number-wrong 2]
     (begin
       (printf "-----\n")
       (printf "|   |\n")
       (printf "|   0\n")
       (printf "|   |\n")
       (printf "|\n")))
    ([equal? number-wrong 3]
     (begin
       (printf "-----\n")
       (printf "|   |\n")
       (printf "|   0\n")
       (printf "|  -|-\n")
       (printf "|\n")))
    ([equal? number-wrong 4]
     (begin
       (printf "-----\n")
       (printf "|   |\n")
       (printf "|   0\n")
       (printf "|  -|-\n")
       (printf "|  / \\\n")))))

(define [letter? letter]
  (regexp-match? #rx"[a-zA-Z]" letter))

(define [accept-letter]
  (printf "Guess a letter\n")
  (define letter (read-line))
  (if (equal? (string-length letter) 1)
      (if (letter? letter)
          letter
          "BIG ERROR!!!!")
      "ERROR!!!!!!"))
