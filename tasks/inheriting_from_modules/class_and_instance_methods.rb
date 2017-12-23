module Foo
  module ClassMethods
    def class_method
      puts 'You are inside class method!'
    end
  end

  module InstanceMethods
    def instance_method
      puts 'You are inside instance method!'
    end
  end

  def self.included(base)
    base.send(:include, InstanceMethods)
    base.extend(ClassMethods)
  end
end

class Test
  include Foo
end

Test::class_method
Test.new.instance_method
