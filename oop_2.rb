class OwnVector2D
  attr_accessor :x,:y
  def initialize(x,y)
    @x = x
    @y = y
  end

  def to_s
    "(#{@x}, #{@y})"
  end

  def dot_prod(other)
    @x*other.x + @y*other.y
  end

  def +(other)
    OwnVector2D.new(@x + other.x, @y + other.y)
  end
end

v1 = OwnVector2D.new(1,4)
puts(v1)

v2 = OwnVector2D.new(3,-1)
puts(v1.dot_prod(v2))

puts(v1 + v2)

