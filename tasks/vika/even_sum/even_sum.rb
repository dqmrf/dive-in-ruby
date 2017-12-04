sum = 0
Array.new(0, 20).each {|n| sum += n if n % 2 == 0 }
puts sum
