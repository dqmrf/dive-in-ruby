class Bicycle
  attr_reader :gears, :wheels, :seats

  def initialize(gears = 1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end
end


class Tandem < Bicycle
  def initialize(gears = 1)
    super
    @seats = 2
  end
end

t = Tandem.new 2
p t.wheels #=> 2
p t.seats  #=> 2
p t.gears  #=> 2
