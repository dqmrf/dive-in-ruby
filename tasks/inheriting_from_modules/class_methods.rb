module M
  # A normal instance method
  def mul
    @x * @y
  end

  module ClassMethods
    # A class method
    def factory(x)
      new(x, 2 * x)
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end
end

class A
  include M

  def initialize(x, y)
    @x, @y = x, y
  end

  def sum
    @x + @y
  end
end


a = A.new(5, 10)
p a.sum #=> 15
p a.mul #=> 50

f = A.factory(5)
p f.sum #=> 15
p f.mul #=> 50
