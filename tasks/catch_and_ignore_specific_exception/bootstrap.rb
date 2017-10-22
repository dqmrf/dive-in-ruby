require 'pry'
require_relative 'my_error'
require_relative 'stripe_error'

class MockStripeHelper

  def initialize(action, raise_stripe = true)
    @action = action
    @raise_stripe = raise_stripe
    @message = case action
      when :create
        'Could not create plan for you!'
      when :update
        'Could not update your plan!'
      end
  end

  def charge
    safe_call("#{@action.to_s}_subscription")
  rescue StripeError => e
    puts e.message
  end

  private

  def update_subscription
    raise_error
  end

  def create_subscription
    raise_error
  end

  def safe_call(method)
    self.send(method)
  rescue StripeError
    raise
  rescue
    puts "MyError: #{@message}"
  end

  def raise_error
    if @raise_stripe
      raise StripeError.new("StripeError: #{@message}")
    else
      raise MyError.new('Oops, some unexpected error occured :(') # It shouldn't be
    end
  end

end

sh = MockStripeHelper.new(:create, false)
sh.charge
