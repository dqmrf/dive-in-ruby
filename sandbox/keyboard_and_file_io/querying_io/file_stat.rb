filename = File.join(File.dirname(__FILE__), '../data/records.txt')

# [1]> Creation

# way 1:
p File::Stat.new(filename)
# #<File::Stat dev=0x806, ino=272328, mode=0100664, nlink=1, uid=1000, gid=1000,
# rdev=0x0, size=138, blksize=4096, blocks=8, atime=2017-11-11 10:19:49 +0200,
# mtime=2017-11-08 22:16:16 +0200, ctime=2017-11-08 22:16:16 +0200>

# way 2:
File.open(filename) {|f| p f.stat }
# [Same output as in way 1]
