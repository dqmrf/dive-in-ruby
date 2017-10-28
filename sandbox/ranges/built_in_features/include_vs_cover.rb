range = 'a'..'z'

puts range.cover?('a')     #=> true
puts range.cover?('abc')   #=> true

puts range.include?('a')   #=> true
puts range.include?('abc') #=> false

range = 1.0..2.0
puts range.include?(1.5)   #=> true
puts range.include?(2.0)   #=> true

range = 1.0...2.0
puts range.include?(2.0)   #=> false

# The test fails because 50 is neither greater than 100 nor less than 1.
range = 100...1
puts range.include?(50)        #=> false
