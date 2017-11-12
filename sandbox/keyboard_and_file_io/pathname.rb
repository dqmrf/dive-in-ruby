require 'pathname'

filename = File.join(File.dirname(__FILE__), '../data/records.txt')
path = Pathname.new(filename)


puts path.basename #=> records.txt
puts path.dirname  #=> sandbox/keyboard_and_file_io/pathname/../data
puts path.extname  #=> .txt


# The Pathname object can also walk up its file and directory structure,
# truncating itself from the right on each iteration, using the ascend method
# and a code block:
path.ascend {|dir| puts dir } #=>
  # sandbox/keyboard_and_file_io/pathname/../data/records.txt
  # sandbox/keyboard_and_file_io/pathname/../data
  # sandbox/keyboard_and_file_io/pathname/..
  # sandbox/keyboard_and_file_io/pathname
  # sandbox/keyboard_and_file_io
  # sandbox


# The key behavioral trait of Pathname objects is that they return other
# Pathname objects:
path.ascend {|dir| puts dir.basename } #=>
  # records.txt
  # data
  # ..
  # pathname
  # keyboard_and_file_io
  # sandbox
