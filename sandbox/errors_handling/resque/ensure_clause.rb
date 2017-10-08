require 'pry'

def line_from_file(filename, substring)
  filename_relative = File.join(File.dirname(__FILE__), filename)
  fh = File.open(filename_relative)

  begin
    line = fh.gets
    raise ArgumentError unless line.include?(substring)
  rescue ArgumentError
    puts 'Invalid Line!'
    raise
  ensure
    fh.close
  end

  line
end

puts line_from_file('data.txt', 'line')
