class Ticket
  attr_reader :venue, :date
  attr_accessor :price
  # equal to
  # attr_reader :venue, :date, :price
  # attr_writer :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end

ticket = Ticket.new 'Canada', '12/12/17'
ticket.price = '100'

p ticket.venue
p ticket.date
p ticket.price
