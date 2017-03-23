# Ex 3
def test(&block)
  block.call
end

test { puts "Hello world!" }

# Ex 2
def test
  yield 5
  puts "You're in the method test"
  yield 100
end

test { |i| puts "You are in the block #{i}"}

# Ex 1
def test
  puts 'You are in the method'
  yield
  puts 'You are again back to the method'
  yield
end

test { puts 'You are in the block' }
