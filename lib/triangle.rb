require('pry')
class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle?) do
    if (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side1 + @side3 <= @side2)
     return false
    else
     return true
    end
  end

  define_method(:triangle_type) do
    if triangle?()
      if (@side1 == @side2 && @side2 == @side3)
        output = "Equilateral Triangle"
      elsif (@side1 == @side2 || @side2 == @side3 || @side1 == @side3)
        output = "Isosceles Triangle"
      else #(@side1 =! @side2 && @side2 =! @side3 && @side1 =! @side3)
        output = "Scalene Triangle"
      end
    else
      output = "not a triangle"
    end

    output
  end

end
