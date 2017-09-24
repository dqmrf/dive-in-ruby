array = [1, 2, 3, 4, 5]
hash = { one: 1, two: 2, three: 3 }

for elem in array
  print elem #=> 1, 2, 3, 4, 5
end

print "\n"

for key, value in hash
  print key, ": ", value, ", " #=> one: 1, two: 2, three: 3
end
