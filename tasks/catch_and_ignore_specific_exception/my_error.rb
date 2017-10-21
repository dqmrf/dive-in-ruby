class MyError < StandardError
  attr_reader :type

  def initialize(message)
    @type = 'my-error'
    super(message)
  end
end
