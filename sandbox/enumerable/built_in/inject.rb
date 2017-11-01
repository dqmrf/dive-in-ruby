puts [1, 2, 3, 4].inject(0) { |acc, n| acc + 1 } #=> 4
puts [1, 2, 3, 4].inject(0) { |acc, n| acc + n } #=> 10
