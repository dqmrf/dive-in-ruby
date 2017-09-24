def hasValue?(x)
  case x
  when nil, [], "", 0
    false
  else
    true
  end
end

x, y = 0, [0]

puts hasValue? x #=> false
puts hasValue? y #=> true
