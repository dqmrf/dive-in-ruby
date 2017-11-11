filename = File.join(File.dirname(__FILE__), '../data/records.txt')
filename_mock = File.join(File.dirname(__FILE__), '../data/wtf.txt')
dirname = File.join(File.dirname(__FILE__), '../data')
dirname_mock = File.join(File.dirname(__FILE__), '../wtf')
symlink = File.join(File.dirname(__FILE__), '../data/sample_symlink.txt')


# [1]> Get file size
p File.size(filename)                    #=> 138
p FileTest.size(filename)                #=> 138
p File::Stat.new(filename).size          #=> 138


# [2]> Does a file exist?
p FileTest.exist?(filename)              #=> true
p FileTest.exist?('/tmp')                #=> true
p FileTest.exist?(dirname)               #=> true
p FileTest.exist?(dirname_mock)          #=> false
p FileTest.exist?('/wtf')                #=> false


# [3]> Is the file a directory? A regular file? A symbolic link?
p FileTest.directory?(dirname)           #=> true
p FileTest.directory?(filename)          #=> false
p FileTest.directory?(dirname_mock)      #=> false
p FileTest.directory?('/wtf')            #=> false

p FileTest.file?(filename)               #=> true
p FileTest.file?(filename_mock)          #=> false
p FileTest.file?(dirname)                #=> false

p FileTest.symlink?(symlink)             #=> true
# This family of query methods also includes blockdev?, pipe?, chardev?, and socket?.


# [4]> Is a file readable? Writable? Executable?
p FileTest.readable?(filename)           #=> true
p FileTest.readable?(dirname)            #=> true
p FileTest.readable?(filename_mock)      #=> false
p FileTest.readable?(dirname_mock)       #=> false
p FileTest.readable?('/tmp')             #=> true
p FileTest.exist?('/var/lib/lightdm')    #=> true
p FileTest.readable?('/var/lib/lightdm') #=> false
# This family of query methods includes world_readable? and world_writable?,
# which test for more permissive permissions.


#=> Is the file empty (zero bytes)?
p FileTest.zero?(filename)               #=> false
