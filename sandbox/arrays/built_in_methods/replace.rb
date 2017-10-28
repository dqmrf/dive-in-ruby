a = [1, 2, 3]
b = a
a.replace([4, 5, 6])

print b; puts "\n" #=> [4, 5, 6]
print a; puts "\n" #=> [4, 5, 6]

a = [7, 8, 9]

print b; puts "\n" #=> [4, 5, 6]
print a; puts "\n" #=> [7, 8, 9]
