def fb_calc(x)
  case 0
  when x % 15
    'FizzBuzz'
  when x % 3
    'Fizz'
  when x % 5
    'Buzz'
  else
    x.to_s
  end
end

def fb(n)
  (1..Float::INFINITY).lazy.map {|x| fb_calc(x) }.first(n)
end

p fb(15) #=>
  # ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11",
  # "Fizz", "13", "14", "FizzBuzz"]
