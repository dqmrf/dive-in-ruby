require 'pry'
require_relative 'my_error'
require_relative 'stripe_error'
require_relative 'membership_helper'
require_relative 'subscriptions_helper'

class Bootstrap
  include MembershipHelper

  def charge
    subscriber = MembershipSubscriber.new
    p subscriber.charge_and_subscribe.success?
    p subscriber.state.success?
    p subscriber.state.error
  end
end

Bootstrap.new.charge
