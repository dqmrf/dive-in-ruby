celsius = File.read('temp.dat').to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'"
filename = File.join(File.dirname(__FILE__), 'temp.out')
fh = File.new(filename, 'w')
fh.puts fahrenheit
fh.close
