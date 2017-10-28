hash1 = { one: 1, two: 2, three: 3, six: 6 }
hash2 = { five: 5, six: 4 }

hash3 = hash2.merge(hash1)

puts hash3[:six] #=> 4
