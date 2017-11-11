datadir = File.join(File.dirname(__FILE__), '../data')

# You can get hold of the entries in one of two ways: using the entries method
# or using the glob technique. The main difference is that globbing the directory
# doesn’t return hidden entries

# Both the Dir class itself and instances of the Dir class can give you a
# directory’s entries. Given the instance of Dir created earlier, you can do this:
d = Dir.new(datadir)
p d.entries
#=> ["records.txt", ".hidden_file.rb", "sample_symlink.txt", "sample.txt", ".", "..", "members.txt"]

# Or you can use the class-method approach:
p Dir.entries(datadir)
#=> ["records.txt", ".hidden_file.rb", "sample_symlink.txt", "sample.txt", ".", "..", "members.txt"]
