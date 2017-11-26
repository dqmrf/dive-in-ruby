require 'pry'
require_relative 'my_error'
require_relative 'stripe_error'

class SubscriptionsHelper
  attr_reader :error

  def charge
    # raise StripeError.new('Error in :charge method!')
    update_subscription
    # raise StripeError.new('Error 2 in :charge method!')
    puts '>> :charge CODE EXECUTED!'
    true
  rescue => e
    handle_error(e)
  end

  private

  def update_subscription
    # raise StripeError.new("Couldn't update subscription plan!")
    puts '>> :update_subscription CODE EXECUTED!'
  rescue => e
    pass_error(e)
  end

  def pass_error(err)
    log_error(err)
    raise
  end

  def handle_error(err)
    log_error(err)
  end

  def log_error(err)
    self.error = err if @error.nil?
  end

  def error=(error)
    @error = error
  end
end

sh = SubscriptionsHelper.new
p sh.charge
