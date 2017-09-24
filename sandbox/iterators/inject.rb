data = [2, 3, 4, 5]

sum = data.inject { |sum, x| sum + x }
puts sum #=> 14 (2 + 3 + 4 + 5)

floatprod = data.inject(1.0) { |p, x| p*x }
puts floatprod #=> 120.0 (1.0 * 2 * 3 * 4 * 5)

max = data.inject { |m, x| m > x ? m : x }
puts max #=> 5
