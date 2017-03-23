# Ex 1
a = 5

res = case a
      when 1..10
        'low'
      when 10..20
        'middle'
      else 
        'high'
      end

puts res
