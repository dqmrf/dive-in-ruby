entriesdir = File.join(File.dirname(__FILE__), '../sandbox/entries')
dir = Dir.new(entriesdir)
entries = dir.entries

entries.delete_if {|entry| entry =~ /^\./ }
entries.map! {|entry| File.join(dir.path, entry) }
entries.delete_if {|entry| !FileTest.file?(entry) }

total_bytes = entries.inject(0) do |total, entry|
  total + File.size(entry)
end

puts "Total bytes: #{total_bytes}" #=> Total bytes: 572
