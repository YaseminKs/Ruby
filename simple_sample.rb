class GeometricObject
  attr_reader :color, :filled

  def to_s
    print "Is this filled? "
    filledd = gets()
    @filled = filledd
    print "What is color? "
    colorr = gets()
    @color = colorr
  end
  
  def to_s1
    p "FILLED = #{@filled} COLOR = #{@color} "
  end

end

class Circle < GeometricObject
  attr_reader :r
  
  def initialize( r )
    @r = r
  end
  
  def perimeter
    2 * Math::PI * @r
  end
  
  def area
    Math::PI * @r**2
  end

end

class Rectangle < GeometricObject
  attr_reader :a, :b

  def initialize( a, b )
      @a = a
      @b = b
  end

  def perimeter
      2 * @a + 2 * @b
  end

  def area
      @a * @b
  end

end


def main
  p "C CIRCLE: "
  c = Circle.new( 5 )
  p "#{c.to_s}" 
  p "C circle`s #{c.to_s1}"
  p "C circle`s area is #{c.area}"
  p "C circle`s perimeter is #{c.perimeter}"

  print "\n\n"
  
  p "K RECTANGLE:"
  k = Rectangle.new( 8, 10 )
  p "#{k.to_s}"
  p "K Rectangle`s  #{k.to_s1} "
  p "K pectanle`s area is #{k.area} "
  p "K pectangle`s perimeter is #{k.perimeter} "
  print "\n\n"

  p "END :)"
  
  print "\n\n"
end

main
