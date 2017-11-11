entriesdir = File.join(File.dirname(__FILE__), '../sandbox/entries')

entries = Dir[entriesdir + '/*'].select {|entry| FileTest.file?(entry) }
total_bytes = entries.inject(0) do |total, entry|
  total + File.size(entry)
end

puts "Total bytes: #{total_bytes}" #=> Total bytes: 619
