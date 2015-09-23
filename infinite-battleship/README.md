# Infinite Battleship

Let's play battleship! Here's how the game goes:

You and your opponent each have five boats.
- Aircraft carrier (length 5)
- Battleship (length 4)
- Submarine (length 3)
- Destroyer (length 3)
- Patrol Boat (length 2)

The game is played on a 2D grid, the 'map'.
First, both players place one of of each of the boats on the map - vertically
or horizontally, but not diagonally. You'll then take turns firing a shot (by
specifying a square of the grid to strike). When a boat is hit on each of its
sections, it'll sink! You win when all of your opponent's boats are sunk.

When you write this, you'll need these methods:
- Place boat on the map
- Fire a shot into a players board, where one of three things can happen:
  "Hit my X", "Sunk my Y", or "Splash"

You're welcome to add any UI or player interaction you choose!

The one complication:
This is _infinite_ battleship, so your "fire a shot" method will need to accept
arbitrarily large coordinates.
