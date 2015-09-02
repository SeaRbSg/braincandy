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
