class Car
  @@makes = []
  @@cars = {}
  @@total_count = 0

  attr_reader :make

  def self.total_count
    @@total_count
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end

  def initialize(make)
    if @@makes.include?(make)
      @make = make
      @@cars[make] += 1
      @@total_count += 1
    else
      raise "No such make: #{make}."
    end
  end

  def make_mates
    @@cars[self.make]
  end
end

class Hybrid < Car
  # Class variables are also leaky:
  # Hybrid.total_count is the same method as Car.total_count , and it wraps the same
  # variable. Class variables aren’t reissued freshly for every subclass, the way instance variables are
  # for every object
  #
  # To track hybrids separately, we’d have to do something like this:
  @@total_hybrid_count = 0
  # etc...
end

Car.add_make('Honda')
Car.add_make('Ford')
h = Car.new('Honda')
f = Car.new('Ford')
h2 = Car.new('Honda')

Hybrid.add_make('Honda')
h_hybrid = Hybrid.new('Honda')

puts "Counting cars of same make as h2..."
puts "There are #{h2.make_mates}."

puts "Counting total cars..."
puts "There are #{Car.total_count}."
