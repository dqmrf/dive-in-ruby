class VirtualProxy
  attr_reader :subject

  def initialize(&creation_block)
    @creation_block = creation_block
  end

  def method_missing(name, *args)
    s = subject
    s.send(name, *args)
  end

  def subject
    @subject = @creation_block.call unless @subject
    @subject
  end
end

array = VirtualProxy.new { Array.new }
array << 'hello'
array << 'out'
array << 'there'
p array.subject #=> ["hello", "out", "there"]
