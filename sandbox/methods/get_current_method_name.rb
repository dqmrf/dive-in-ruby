module FooModule
  def bar
    __callee__
  end
end

class FooClass
  include FooModule
end

foo = FooClass.new
puts foo.bar
