# Bouncy balls

First install Zenspider's graphics library. We're going to use this to draw balls on the screen and have them bounce around.

## Installation
*Mac:*
Ensure ruby and homebrew are already installed.
```
wget -O - https://raw.githubusercontent.com/zenspider/graphics/master/rubysdl_setup.sh | sh
gem install graphics --pre
```

*Windows:*
I don't use Windows so I'm not sure. Please send us a pull request with instructions if you are Windows-savvy!
```
???
gem install graphics --pre
```

*Linux:*
YMMV here base on your linux distribution. You will need the rsdl and rubysdl gems installed.
```
???
gem install graphics --pre
```

## Problem
WITHOUT looking at the examples, do the following (in phases):

1. Draw a ball on the screen in a random location.
2. Make the ball move over time.
3. Apply a constant downward force of "gravity" to the ball.
4. Make hitting the floor or wall slow the ball down a bit.
5. Add many balls and make them do the same thing

In the end, the code should be well-factored and have a clean object-oriented design.

The code should be performant for up to 500 balls

## Hints

This should give you a basic starting template to code from. Fill in the blanks reading through the [rdoc documentation](http://docs.seattlerb.org/graphics/) for graphics.

```ruby
#!/usr/bin/env ruby -w

require "graphics"

class Ball < Graphics::Body
  def initialize w
    super
    #TODO
  end

  def draw
    #TODO
  end
end

class BounceSimulation < Graphics::Simulation
  def initialize
    super 640, 640, 16, "Bounce"
    #TODO
  end

  def update n
    #TODO
  end

  def draw n
    #TODO
  end
end

BounceSimulation.new.run
```
