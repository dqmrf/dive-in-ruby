class A
  def self.qty
    @qty ||= 0
  end

  def self.qty=(n)
    @qty = n
  end

  def increment
    self.class.qty += 1
  end
end

class B < A
end

a = A.new
b = B.new
b2 = B.new

3.times { a.increment }
2.times { b.increment }
2.times { b2.increment }

p A.qty #=> 3
p B.qty #=> 4
