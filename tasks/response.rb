class Response
  attr_reader :error

  def self.success!
    self.new(true)
  end

  def self.failure!(*args)
    self.new(false, args)
  end

  def initialize(success, error = nil)
    @success = success
    @error = error
  end

  def success?
    @success
  end
end

def test
  Response.failure!('This is an error!')
end

def caller
  puts test.error
  puts test.success?
end

caller
