# Example: 1
s = "$1000"
s.each_char { |x| print "#{x}\n" }

# Example: 2
s2 = ""
s = "Lorem
Ipsum
Dolor\n"

s.each_line { |x| s2 += x.strip! }
print "#{s2}\n"
