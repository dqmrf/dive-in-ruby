a = [1, 1, 2, 2, 3, 3, 4]
b = [5, 5, 4, 4, 3, 3, 2]

print "a     => #{a}\n\r"
print "b     => #{b}\n\r"

print "a | b => #{a | b}\n\r" #=> [1, 2, 3, 4, 5]
print "b | a => #{b | a}\n\r" #=> [5, 4, 3, 2, 1]

print "a & b => #{a & b}\n\r" #=> [2, 3, 4]
print "b & a => #{b & a}\n\r" #=> [4, 3, 2]
