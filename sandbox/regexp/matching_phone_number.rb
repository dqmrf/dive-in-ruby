string = 'My Phone Number is (123) 555-1234'
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/

m = phone_re.match(string)

unless m
  puts 'There was no match!'
  exit
end

print 'The whole string we started with: '
puts m.string

print 'The entire part of the string that matched: '
puts m[0]    #=> (123) 555-1234

p m.captures #=> ["123", "555", "1234"]
