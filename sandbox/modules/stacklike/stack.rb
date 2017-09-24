require_relative 'modules/stacklike'

class Stack
  include Stacklike
end

s = Stack.new

s.add_to_stack 'item one'
s.add_to_stack 'item two'
s.add_to_stack 'item three'

puts "Objects currently in stack:"
p s.stack

taken = s.take_from_stack
puts "Removed this object: #{taken}"
puts "Now on stack:"
p s.stack
