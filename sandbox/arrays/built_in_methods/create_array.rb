n = 0
arr = Array.new(3) { n += 1; n * 10 }
print arr
print "\n"


alt_arr = Array.new(3) { |x| x * 10 }
print alt_arr
print "\n"
