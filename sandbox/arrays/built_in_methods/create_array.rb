n = 0
arr = Array.new(3) { n += 1; n * 10 }
p arr


alt_arr = Array.new(3) { |x| x * 10 }
p alt_arr
