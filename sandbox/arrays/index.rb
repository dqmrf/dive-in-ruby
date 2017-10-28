# Example: 0
sz = [1, 2, 3]
puts sz.size, "\n"  #=> 3


# Example: 1
words = %w[this is a test]
open = %w|[ { ( < |
write = %W(\s \t \r \n)
print words, "\n" #=> ["this", "is", "a", "test"]
print open, "\n"  #=> ["[", "{", "(", "<"]
print write, "\n" #=> [" ", "\t", "\r", "\n"]
puts "\r"


# Example: 2
zeros = Array.new(3, 0)
print zeros, "\n\r" #=> [0, 0, 0]
puts "\r"


# Example: 3
nils = Array.new(3)
count = Array.new(3) { |x| x + 1 }
print nils, "\n"  #=> [nil, nil, nil]
print count, "\n" #=> [1, 2, 3]
puts "\r"


# Example: 4
a = ('a'..'e').to_a

print a, "\n"       #=> ["a", "b", "c", "d", "e"]
print a[0..2], "\n" #=> ["a", "b", "c"]

a[0, 2] = ['A', 'B']
print a, "\n"       #=> ["A", "B", "c", "d", "e"]

a[2..5] = ['C', 'D', 'E']
print a, "\n"       #=> ["A", "B", "C", "D", "E"]

a[0, 0] = [1, 2, 3]
print a, "\n"       #=> [1, 2, 3, "A", "B", "C", "D", "E"]

a[0, 3] = []
print a, "\n"       #=> ["A", "B", "C", "D", "E"]
puts "\r"


# Example: 5
b = [1, 2, 3] + [4, 5]
print b, "\n" #=> [1, 2, 3, 4, 5]

c = [1, 2, 3, 4, 5] - [2, 4]
print c, "\n" #=> [1, 3, 5]
puts "\r"


# Example: 6
a = [0] * 8
print a, "\n" #=> [0, 0, 0, 0, 0, 0, 0, 0]


# Example: 7
a = []
a << 1      # [1]
a << 2 << 3 # [1, 2, 3]
