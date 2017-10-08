def fuzzy_method
  raise ArgumentError, 'I need a number under 10' unless x < 10
end

begin
  fuzzy_method(20)
rescue ArgumentError => e
  puts 'That was not an acceptable number!'
  puts "Here's a backtrace for this exeption:"
  puts e.backtrace
  puts "And here's the exeption object's message:"
  puts e.message
end
