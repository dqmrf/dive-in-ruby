# [1]> This line of code runs forever:
# (1..Float::INFINITY).select {|n| n % 3 == 0 }.first(10)

# [2]> Usage of a lazy enumerator
p (1..Float::INFINITY).lazy.select {|n| n % 3 == 0 }.first(10)
  #=> [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]

# [3]> Use the lazy select enumerator
my_enum = (1..Float::INFINITY).lazy.select {|n| n % 3 == 0 }
p my_enum.take(5).force  #=> [3, 6, 9, 12, 15]
p my_enum.take(10).force #=> [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]
