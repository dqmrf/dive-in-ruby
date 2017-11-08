# [1]> If you want to harvest all the digits in a string, you can do this:
p 'testing 1 2 3 testing 4 5 6'.scan(/\d/) #=> ["1", "2", "3", "4", "5", "6"]

# [2]> If you use parenthetical groupings in the regexp you give to scan,
#      the operation returns an array of arrays. Each inner array contains
#      the results of one scan through the string:
str = 'Leopold Auer was the teacher of Jascha Heifetz.'
violinists = str.scan(/([A-Z]\w+)\s([A-Z]\w+)/)
p violinists #=> [["Leopold", "Auer"], ["Jascha", "Heifetz"]]

violinists.each do |fname, lname|
  puts "#{lname}'s first name was #{fname}."
end
# Auer's first name was Leopold.
# Heifetz's first name was Jascha.

# [3]> Scan with block
str.scan(/([A-Z]\w+)\s([A-Z]\w+)/) do |fname, lname|
  puts "#{lname}'s first name was #{fname}."
end
# Auer's first name was Leopold.
# Heifetz's first name was Jascha.

# [4]>
'one two three'.scan(/\w+/) {|n| puts "Next number: #{n}" }
# Next number: one
# Next number: two
# Next number: three
