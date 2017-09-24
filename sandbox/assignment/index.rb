x, y, z = 1, 2, 3
puts x, y, z

x = y = 0
puts x, y

x = [1, 2]
y, = [1, 2]
print x #=> [1, 2]
print y #=> 1

x, *y = 1, 2 , 3
print x, ', ', y #=> 1, [2, 3]

*x, y = 1, 2, 3
print x, ', ', y #=> [1, 2], 3

*x, y = 1
print x, ', ', y #=> [], 1

x, y, z = 1, *[2, 3]
print x, ', ', y, ', ', z #=> 1, 2, 3

x, y, *z = 1, *[2, 3, 4]
print x, ', ', y, ', ', z #=> 1, 2, [3, 4]
