#lang simply-scheme

; 8.4

(define (vowel? letter)
  (member? letter '(a e i o u)))

(define (even-count? word)
  (even? (count word)))

(define (ends-vowel? word)
  (vowel? (last word)))

(define (choose-beatles pred)
  (keep pred '(John Paul George Ringo)))

(choose-beatles ends-vowel?)

(choose-beatles even-count?)

;;;;;;;;;;;;;
; second attempt

(define (even-count? word)
  (even? (count word)))

(define (vowel? letter)
  (member? letter '(a e i o u)))

(define (ends-vowel? word)
  (vowel? (last word)))

(define (choose-beatles pred)
  (keep pred '(John Paul George Ringo)))

(choose-beatles ends-vowel?)
(choose-beatles even-count?)

; 8.5

(define (transform-beatles procedure)
  (se (every procedure '(John Paul George Ringo))))

(transform-beatles butfirst)

; 8.6

(define (nato-phon letter)
  (cond ((equal? letter 'a) 'alpha)
        ((equal? letter 'b) 'bravo)
        ((equal? letter 'c) 'charlie)
        ((equal? letter 'd) 'delta)
        ((equal? letter 'e) 'echo)
        ((equal? letter 'f) 'foxtrot)
        ((equal? letter 'g) 'golf)
        ((equal? letter 'h) 'hotel)
        ((equal? letter 'i) 'india)
        ((equal? letter 'j) 'juliette)
        ((equal? letter 'k) 'kilo)
        ((equal? letter 'l) 'lima)
        ((equal? letter 'm) 'mike)
        ((equal? letter 'n) 'november)
        ((equal? letter 'o) 'oscar)
        ((equal? letter 'p) 'papa)
        ((equal? letter 'q) 'quebec)
        ((equal? letter 'r) 'romeo)
        ((equal? letter 's) 'siera)
        ((equal? letter 't) 'tango)
        ((equal? letter 'u) 'uniform)
        ((equal? letter 'v) 'victor)
        ((equal? letter 'w) 'whiskey)
        ((equal? letter 'x) 'xray)
        ((equal? letter 'y) 'yankee)
        ((equal? letter 'z) 'zulu)
        (else 'huh?)))

(define (nato-letters word)
  (se (every nato-phon word)))

(nato-phon '(abc))

; 8.7

(define (letter-count sent)
  (accumulate + (every count sent)))

(letter-count 'monkey)
(letter-count 'onomonopia)
(letter-count '(this is a test of the emergency counting system))

; 8.8


(define (exaggerate-word wd)
  (cond ((equal? wd 'good) 'great)
        ((equal? wd 'sad) 'miserable)
        ((equal? wd 'great) 'fantastic)
        ((equal? wd 'small) 'tiny)
        ((equal? wd 'big) 'gigantic)
        ((equal? wd 'enjoy) 'love)
        ((number? wd) (* wd 2))
        (else wd)))

(define (exaggerate sent)
  (every exaggerate-word sent))

(exaggerate-word '(i had a great time))
(exaggerate-word '(i ate 11 potstickers))