require 'pry'
require_relative 'my_error'
require_relative 'stripe_error'

class SubscriptionsHelper
  def charge
    error_interceptor do
      update_subscription
    end
  end

  private

  def update_subscription
    raise StripeError.new("Couldn't update subscription plan!")
  rescue => e
    call_error(e)
  end

  def error_interceptor
    begin
      # @stop = Proc.new {|e| raise e }
      yield if block_given?
    rescue => e
      puts "Error: #{e.message}"
    end
  end

  def call_error(e)
    raise e
    # @stop.call(e)
  end
end

sh = SubscriptionsHelper.new
sh.charge
