a = 'a'
puts a.equal?(a)     #=> true
puts a.equal?('a')   #=> false
puts 'a'.equal?('a') #=> false

puts a.eql?(a)       #=> true
puts a.eql?('a')     #=> true
puts 'a'.eql?('a')   #=> true
