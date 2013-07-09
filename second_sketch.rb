require 'ruby-processing'
class SecondSketch < Processing::App

  def setup
    background(128, 0, 235)
    fill()
  end

  def draw
	stroke(0, 0, 0)
  if  @size.nil? || @size == 255
      @size = 1
  else
  	@size = @size + 1
  end
	  fill(255, 20+@size, 20+@size)
	  rect(20, 20, rand(@size), rand(@size))
	  rect(300, 300, (@size), 50)
	  end
  end

  SecondSketch.new(:width => 400, :height =>400)

   