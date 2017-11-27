require_relative 'my_error'
require_relative 'stripe_error'
require_relative 'subscriptions_helper'

module MembershipHelper
  include SubscriptionsHelper

  class MembershipSubscriber < Subscriber
    def charge_and_subscribe
      if super && state.success?
        puts 'Extra code in :charge_and_subscribe method.'
      end

      raise MyError.new('Error inside overridden :charge_and_subscribe method!')
    rescue => e
      state.log_error(e)
    end
  end
end
