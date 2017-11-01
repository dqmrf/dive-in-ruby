array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each_slice(3) { |slice| p slice }
=begin
[1, 2, 3]
[4, 5, 6]
[7, 8, 9]
[10]
=end

array.each_cons(1) { |slice| p slice }
=begin
[1, 2, 3]
[2, 3, 4]
[3, 4, 5]
[4, 5, 6]
[5, 6, 7]
[6, 7, 8]
[7, 8, 9]
[8, 9, 10]
=end
