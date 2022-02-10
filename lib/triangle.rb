class Triangle
  attr_accessor :side1
  attr_accessor :side2
  attr_accessor :side3
  def initialize(side1,side2,side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end
  def kind
    if side1 == side2 && side1 == side3
      :equilateral
    elsif side1 != side2 && side1 != side3 && side2 != side3
      :scalene
    elsif ( side1 == side2 || side1 == side3 || side2 == side3) 
      :isosceles    
    else
      raise TriangleError unless side_zero? && tri_inequality?
    end
  end

  def side_zero?
    side1 > 0 && side2 > 0 && side3 > 0
  end

  def tri_inequality?
    side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
  end

  class TriangleError < StandardError

  end

end
