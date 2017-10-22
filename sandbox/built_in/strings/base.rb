string = 'Ruby is the cool language.'

string['cool'] = 'great'
puts string #=> Ruby is the great language.

string[-1] = '!'
puts string #=> Ruby is the great language!

string[-9..-1] = 'thing to learn!'
puts string #=> Ruby is the great thing to learn!
