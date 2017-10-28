hash1 = { one: 1, two: 2, three: 3, six: 6 }
hash2 = { five: 5, six: 4 }

hash1.update(hash2)

puts hash1[:six] #=> 4
