# [1]> Using operator === explicitly as a match test
string = 'string'
re = /str/

puts 'Match!' if re.match(string)
puts 'Match!' if string =~ re
puts 'Match!' if re === string
# Match!
# Match!
# Match!
p re === string #=> true
