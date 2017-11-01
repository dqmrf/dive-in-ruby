class Painting
  include Comparable

  attr_reader :price, :year

  def initialize(price, year = 2666)
    @price = price
    @year = year
  end

  def <=>(other_painting)
    self.price <=> other_painting.price
  end
end

paintings = Array.new(4) do |x|
  price = rand(100..1000)
  year = rand(2000..2017)
  Painting.new(price, year)
end

# 1) [include Comparable] isn't necessary:
paintings_sorted = paintings.sort
p paintings.map(&:price)        #=> [936, 935, 717, 725]
p paintings_sorted.map(&:price) #=> [717, 725, 935, 936]

# 2) [include Comparable] required:
paint1 = Painting.new(100)
paint2 = Painting.new(200)
puts paint1 > paint2            #=> false

# 3) Defining sort-order logic with a block
paintings_sorted = paintings.sort do |a, b|
  a.year <=> b.year
end
p paintings_sorted.map(&:year)  #=> [2002, 2003, 2008, 2015]
