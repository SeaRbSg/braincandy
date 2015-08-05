# Scrabble Cheater

I'd like you to help me cheat at Scrabble. I'm not very good at coming up with
various words from my tiles, so I'd like you to write some code to give me all
of the possible words that can be created given a set of tiles. Don't worry so
much about scoring or trying to find the "best" word, or trying to match
what's on the board. (But those are great enhancements!) The maximum number of
tiles you can have in Scrabble is seven, so you'll need to find all of the
words that can be made out of those tiles.

On most unix systems (including Mac OS X), you can find a word dictionary in
"/usr/share/dict/words" - let's assume that all of these words (including
"zymogenic"!) are up valid for scrabble. Feel free to use your own custom
dictionary, but this will do for this purpose.

Here's sample code that reads in all of the words into an array, removes
newlines, and downcases them.
```ruby
words = File.readlines("/usr/share/dict/words").map(&:chomp).map(&:downcase)
```
