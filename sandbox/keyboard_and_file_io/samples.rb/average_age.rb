filename = File.join(File.dirname(__FILE__), '../data/members.txt')

# [1]> Using readlines
count = 0
total_ages = File.readlines(filename).inject(0) do |total, line|
  count += 1
  fields = line.split
  age = fields[3].to_i
  total + age
end

puts "Average age of group: #{total_ages / count}." #=> Average age of group: 25.


# [2]> Using File.open
# With this approach, no intermediate array is created. The File object does its own work.
count = 0
total_ages = File.open(filename) do |file|
  file.inject(0) do |total, line|
    count += 1
    fields = line.split
    age = fields[3].to_i
    total + age
  end
end
puts "Average age of group: #{total_ages / count}." #=> Average age of group: 25.
