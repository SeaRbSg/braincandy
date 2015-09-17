# Yahtzee! Score

Let's play Yahtzee! Actually, let's figure out how much a specific roll scores.

Use this code to generate a roll. It will return an array of values between 1 and 6 with length 5.

```ruby
roll = Array.new(5) { rand(6) + 1 }
```

Write code that prints out the roll and then prints out the highest possible score for that roll. The rules for scoring in Yahtzee are:

| Category       | Description             | Score                                 |
|----------------|-------------------------|---------------------------------------|
| Ones           | Any combo               | The sum of the dice with the number 1 |
| Twos           | Any combo               | The sum of the dice with the number 2 |
| Threes         | Any combo               | The sum of the dice with the number 3 |
| Fours          | Any combo               | The sum of the dice with the number 4 |
| Fives          | Any combo               | The sum of the dice with the number 5 |
| Sixes          | Any combo               | The sum of the dice with the number 6 |
| 3-of-a-kind    | 3 or more dice the same | Sum of all dice                       |
| 4-of-a-kind    | 4 or more dice the same | Sum of all dice                       |
| Full house     | 3-of-a-kind & a pair    | 25                                    |
| Small Straight | 4 in a sequence         | 30                                    |
| Large Straight | 5 in a sequence         | 40                                    |
| Yahtzee        | All 5 dice the same     | 50                                    |
| Chance         | Any combo               | Sum of all dice                       |
