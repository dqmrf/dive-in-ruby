require 'pry'

# [1]
e = Enumerator.new do |y|
  (1..3).each {|i| y << i }
end

p e.to_a                #=> [1, 2, 3]
p e.select {|x| x > 2 } #=> [3]

# [2]
a = [1, 2, 3, 4, 5]
e = Enumerator.new do |y|
  total = 0
  until a.empty?
    total += a.pop
    y << total
  end
end

p e.take(2) #=> [5, 9]
p a         #=> [1, 2, 3]
p e.to_a    #=> [3, 5, 6]
p a         #=> []

# [3] As select
names = %w{ Michael Pavel Leonardo }
e = names.enum_for(:select)
p e.each {|x| x.include?('M') } #=> ["Michael"]
