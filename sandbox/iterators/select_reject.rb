evens = (1..10).select { |x| x % 2 == 0 }
print evens, "\n" #=> [2, 4, 6, 8, 10]

odds = (1..10).reject { |x| x % 2 == 0 }
print odds, "\n" #=> [1, 3, 5, 7, 9]
