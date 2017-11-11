filename = File.join(File.dirname(__FILE__), 'record.txt')
record = File.open(filename, 'w')
old_stdout = $stdout
$stdout = record
$stderr = $stdout
puts 'This is a record'
z = 10/0
