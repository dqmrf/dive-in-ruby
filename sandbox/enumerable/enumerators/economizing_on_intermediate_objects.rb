names = %w{ Michael Pelykh Pavel Durov Leonardo Fibonacci }

arranged_names = names.each_slice(2).map do |first, last|
  "Outstanding Person: #{first} #{last}"
end

p arranged_names #=> ["Outstanding Person: Michael Pelykh",
# "Outstanding Person: Pavel Durov", "Outstanding Person: Leonardo Fibonacci"]
