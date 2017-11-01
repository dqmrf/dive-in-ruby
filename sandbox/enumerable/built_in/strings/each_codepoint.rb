str = "100\u20ac"
str.each_codepoint { |cp| p cp }
=begin
49
48
48
8364
=end

str.each_byte { |b| p b }
=begin
49
48
48
226
130
172
=end
