filename = File.join(File.dirname(__FILE__), 'data/sample.txt')
file = File.open(filename)

# [1]> With pos, you can tell where in the file the pointer is currently pointing:
p file.pos #=> 0
file.gets
p file.pos #=> 11

# You can assign to the position value, which moves the pointer to a specific
# location in the file:
file.pos = 3
p file.gets #=> "st line\n"


# [2]> seek
file.seek(3, IO::SEEK_SET)
p file.gets #=> "st line\n"
file.seek(3, IO::SEEK_SET)

file.seek(3, IO::SEEK_CUR)
p file.gets #=> "line\n"

file.seek(-10, IO::SEEK_END)
p file.gets #=> "cond line\n"
