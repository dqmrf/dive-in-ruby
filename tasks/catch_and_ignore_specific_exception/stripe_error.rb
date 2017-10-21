class StripeError < StandardError
  attr_reader :type

  def initialize(message)
    @type = 'stripe-error'
    super(message)
  end
end
