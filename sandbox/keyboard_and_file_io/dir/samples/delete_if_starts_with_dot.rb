entriesdir = File.join(File.dirname(__FILE__), '../sandbox/entries')

dir = Dir.new(entriesdir)

entries = dir.entries
p entries #=>[".hidden.txt", "unnecessary_dir", "sample.txt", "elections.txt", ".", ".."]

entries.delete_if {|entry| entry =~ /^\./ }
p entries #=> ["unnecessary_dir", "sample.txt", "elections.txt"]

entries.map! {|entry| File.join(dir.path, entry) }
p entries #=>
# ["sandbox/keyboard_and_file_io/dir/samples/../sandbox/entries/unnecessary_dir",
#  "sandbox/keyboard_and_file_io/dir/samples/../sandbox/entries/sample.txt",
#  "sandbox/keyboard_and_file_io/dir/samples/../sandbox/entries/elections.txt"]

entries.delete_if {|entry| !FileTest.file?(entry) }
p entries #=>
# ["sandbox/keyboard_and_file_io/dir/samples/../sandbox/entries/sample.txt",
#  "sandbox/keyboard_and_file_io/dir/samples/../sandbox/entries/elections.txt"]

total_bytes = entries.inject(0) do |total, entry|
  total + File.size(entry)
end

puts "Total bytes: #{total_bytes}" #=> Total bytes: 572
