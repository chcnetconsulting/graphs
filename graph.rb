require 'gosu'
require 'ruby2d'

require 'ruby2d'

set title: "Oida is des geil, nach 20 jahren wieder mal ein gui programm!"
# Set the window size
@screenwidth=640
@screenheight=480
@scaleing=2.0


set width: @screenwidth, height: @screenheight
set background: 'white'
# Create a new shape




l1 = Line.new(
  x1: @screenwidth/2, y1: 0,
  x2: @screenwidth/2, y2: @screenheight,
  color: 'black'
)
l2 = Line.new(
  x1: 0, y1: @screenheight/2,
  x2: @screenwidth, y2: @screenheight/2,
  color: 'black'
)

startval = -4.0
endval = +4.0
step = 0.1
unitbreite = @screenwidth / 6
unitheight = @screenheight / 6

firstx = nil
firsty = nil
(startval..endval).step(step) do |b|
  x = b*unitbreite + @screenwidth/2
  y = Math.sin(b)*unitheight*-1 + @screenheight/2
  if !firstx.nil?
    Line.new(x1:firstx, y1:firsty, x2:x.round(0), y2: y.round(0),color: 'fuchsia')
  end
  firstx = x.round(0)
  firsty = y.round(0)
end

firstx = nil
firsty = nil
(startval..endval).step(step) do |b|
  x = b*unitbreite + @screenwidth/2
  y = Math.cos(b)*unitheight*-1 + @screenheight/2
  if !firstx.nil?
    Line.new(x1:firstx, y1:firsty, x2:x.round(0), y2: y.round(0),color: 'green')
  end
  firstx = x.round(0)
  firsty = y.round(0)
end

firstx = nil
firsty = nil
(startval..endval).step(step) do |b|
  x = b*unitbreite + @screenwidth/2
  y = Math.tan(b)*unitheight*-1 + @screenheight/2
  if !firstx.nil?
    Line.new(x1:firstx, y1:firsty, x2:x.round(0), y2: y.round(0),color: 'blue')
  end
  firstx = x.round(0)
  firsty = y.round(0)
end

firstx = nil
firsty = nil
(startval..endval).step(step) do |b|
  x = (b*unitbreite + @screenwidth/2)
  y = (b*b)*unitheight*-1 + @screenheight/2
  if !firstx.nil?
    Line.new(x1:firstx, y1:firsty, x2:x.round(0), y2: y.round(0),color: 'brown')
  end
  firstx = x.round(0)
  firsty = y.round(0)
end


# Show the window
show