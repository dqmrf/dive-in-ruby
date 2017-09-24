anon_class = Class.new do
  def say_hello
    p 'Hello world!'
  end
end

c = anon_class.new
c.say_hello
