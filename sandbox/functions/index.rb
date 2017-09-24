# Multiple args
def mult(*x)
  x[0] * x[1] * x[2]
end
puts mult(3, 6, 4)

# Two or more args
def two_or_more(a, b, *c)
  puts "I require two or more arguments!"
  puts "And sure enough, I got: "
  p a, b, c
end
two_or_more(1, 2) #=> 1, 2, []

# Mixed args
def mixed_args(a, b, *c, d)
  puts "Arguments:"
  p a, b, c, d
end
mixed_args(1,2,3,4,5) #=> 1, 2, [3, 4], 5
mixed_args(1,2,3)     #=> 1, 2, [], 3

# Unleashed args
def args_unleashed(a, b=1, *c, d, e)
  puts "Arguments:"
  p a, b, c, d, e
end
args_unleashed(1, 2, 3, 4, 5) #=> 1, 2, [3], 4, 5
args_unleashed(1, 2, 3, 4) #=> 1, 2, [], 3, 4
args_unleashed(1, 2, 3) #=> 1, 1, [], 2, 3
# args_unleashed(1, 2) #=> wrong number of arguments (given 2, expected 3+) (ArgumentError)

def args_unleashed_2(a, b=0, c)
  puts "Arguments:"
  p a, b, c
end
args_unleashed_2(1, 2) #=> 1, 0, 2

# Broken args
# def broken_args(a, *b, c=1) #=> syntax error, unexpected '=', expecting ')'
# end
