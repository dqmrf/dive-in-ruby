h = Hash[1, 2, 3, 4, 5, 6]
print h.select { |k, v| k > 1 }; puts "\n" #=> {3=>4, 5=>6}
print h.reject { |k, v| k > 1 }; puts "\n" #=> {1=>2}
