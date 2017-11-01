names = %w{ Michael Pavel Victoria }

print names.map { |name| name.upcase } #=> ["MICHAEL", "PAVEL", "VICTORIA"]
puts "\n"

# The same:
print  names.map(&:upcase)             #=> ["MICHAEL", "PAVEL", "VICTORIA"]
puts "\n"
