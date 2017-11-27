require_relative 'my_error'
require_relative 'stripe_error'
require_relative 'state_helper'

module SubscriptionsHelper
  class Subscriber
    include StateHelper

    def charge_and_subscribe
      create_subscription
      raise MyError.new('Error inside :charge_and_subscribe method!')
      state
    rescue => e
      state.log_error(e)
    end

    def state
      @state ||= State.new
    end

    private

    def create_subscription
      raise StripeError.new('Could not create subscription!')
      puts 'Code inside :create_subscription method.'
    rescue => e
      state.log_error_and_raise(e, message: e.message)
    end
  end
end
