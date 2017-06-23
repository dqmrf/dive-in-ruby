# Example: 1
def test(&block)
  block.call
end

test { puts "Hello world!\n\r" } #=> Hello world!


# Example: 2
def test
  yield 5
  puts "You're in the method test"
  yield 100
end

test { |i| puts "You are in the block #{i}"}
print "\n"
=begin
You are in the block 5
You're in the method test
You are in the block 100
=end


# Example: 3
def test
  puts 'You are in the method'
  yield
  puts 'You are again back to the method'
  yield
end

test { puts 'You are in the block' }
=begin
You are in the method
You are in the block
You are again back to the method
You are in the block
=end
