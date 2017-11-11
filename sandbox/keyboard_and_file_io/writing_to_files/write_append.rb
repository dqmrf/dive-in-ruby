filename = File.join(File.dirname(__FILE__), 'data.txt')
filename2 = File.join(File.dirname(__FILE__), 'data2.txt')

# [1]> 'w' - write
file = File.new(filename, 'w')
file.puts 'Michael Pelykh is...'
file.close
p File.read(filename) #=> "Michael Pelykh is...\n"

# [2]> 'a' - append
file = File.new(filename2, 'a')
file.puts 'Michael Pelykh is...'
file.puts '3243242332'
file.close
p File.read(filename2) #=> Michael Pelykh is...\n3243242332\n"
