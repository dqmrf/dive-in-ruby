class Bid
  include Comparable
  attr_accessor :estimate

  # def >(other_bid)
  #   self.<=>(other_bid)
  # end

  def <=>(other_bid)
    self.estimate <=> other_bid.estimate
  end
end

bid1 = Bid.new
bid2 = Bid.new
bid1.estimate = 100
bid2.estimate = 200

# bid2 > bid1
puts bid2.>(bid1) #=> true
