require('rspec')
require('triangle')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(2,2,8)
      expect(test_triangle.triangle?()).to(eq(false))
    end

    it("returns true if it is a triangle") do
      test_triangle = Triangle.new(5,5,5)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end

  describe("#triangle_type") do
    it("returns equilateral if all sides of the triangle are equal") do
      test_triangle = Triangle.new(7,7,7)
      expect(test_triangle.triangle_type()).to(eq("Equilateral Triangle"))
    end

    it("returns isosceles if any 2 sides of the triangle are equal") do
      test_triangle = Triangle.new(7,7,9)
      expect(test_triangle.triangle_type()).to(eq("Isosceles Triangle"))
    end

    it("returns scalene if no sides of the triangle are equal") do
      test_triangle = Triangle.new(7,8,9)
      expect(test_triangle.triangle_type()).to(eq("Scalene Triangle"))
    end

    it("returns not a triangle if it is not a triangle") do
      test_triangle = Triangle.new(2,2,9)
      expect(test_triangle.triangle_type()).to(eq("not a triangle"))
    end
  end

end
