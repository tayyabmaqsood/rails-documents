class Rectangle
  def intialize(length,width)
    @length = length
    @width = width
  end
  def perimeter
    return 2 * (@length * @width)
  end
  def area
    return @length * @width
  end
end
r = Rectangle.new(10,5)
p r.class
