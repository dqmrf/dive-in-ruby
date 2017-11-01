str = 'abcde'
str.each_byte { |b| p b }
=begin
97
98
99
100
101
=end

p str.bytes #=> [97, 98, 99, 100, 101]
