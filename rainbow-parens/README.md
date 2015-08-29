# Rainbow parens

originally inspired via via http://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/

Given some LISP code, we'd like to re-format it such that we colorize matching parenthesis, brackets, and square braces, and alternate those colors. This gives us a rainbow when it's all matched. If you run into unbalanced parenthesis, raise and error to let the caller know the code isn't properly formatted.

Valid parens:
```
([{()}()])
```

Invalid parens:
```
([{()}()}]
```

Lisp code also contains other atoms as well, so we want to preserve those when we return the results.

Valid Lisp:
```
(define square (lambda (x) (* x x)))
```

Invalid Lisp:
```
(define square (lambda (x) (* x x))
```

Also be aware that sometimes parens can exist within quotes. In that case we don't want to count these towards balancing.

Valid Lisp:
```
(define smile "(:")
```

How do you print colors on the terminal you ask? You can use escape sequences. On ANSI/VT100 terminals and terminal emulators you can first print an escape sequence, then an escape code to indicate the text formatting.

```
ruby -e 'puts "\e[32mGreen\e[0m"'
ruby -e 'puts "\e[33mYellow\e[0m"'
ruby -e 'puts "\e[34mBlue\e[0m"'
ruby -e 'puts "\e[35mMagenta\e[0m"'
ruby -e 'puts "\e[36mCyan\e[0m"'
```

So If I had the code
```
(define (lambda (x) (add5 (+ 5 x)))
```

It would give us:
```
\e[31m(\e[0mdefine \e[32m(\e[0mlambda \e[33m(\e[0mx\e[33m)\e[0m \e[34m(\e[0madd5 \e[35m(\e[0m+ 5 x\e[35m)\e[0m\e[34m)\e[0m\e[32m)\e[0m
```

You can test in your terminal by running "ruby -e 'puts "..."' and the
string above in quotes.
