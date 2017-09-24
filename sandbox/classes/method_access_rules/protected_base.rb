class C
  def initialize(n)
    @n = n
  end

  def compare(c)
    if c.n > n
      p "The other object's n is bigger."
    else
      p "The other object's n is the same or smaller."
    end
  end

  protected

  def n
    @n
  end
end

c1 = C.new(10)
c2 = C.new(20)
c1.compare(c2) #=> The other object's n is bigger.
# c1.n         #=> protected method `n' called for #<C:0x005555bdfbd778 @n=10> (NoMethodError)
