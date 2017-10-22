string = 'Ruby is the cool language.'

puts string.length              #=> 26
puts string.count('a')          #=> 2
puts string.count('A-Z')        #=> 1
puts string.count('ua ')        #=> 8
puts string.count('^a')         #=> 24
puts string.count('g-m')        #=> 6
puts string.count('ag-m')       #=> 8
puts string.count('ag-m', '^l') #=> 6
