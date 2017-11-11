filename = File.join(File.dirname(__FILE__), '../data/sample.txt')
file = File.open(filename)

# [1]> getc
p file.getc       #=> "f"
file.rewind

# [2]> ungetc
file.ungetc('X')
p file.gets       #=> "Xirst line\n"
file.rewind

# [3]> getbyte
p file.getbyte #=> 102
p file.getbyte #=> 105
file.rewind

# [4]>
# Just as readline differs from gets in that readline raises a fatal error if
# you use it at the end of a file, the methods readchar and readbyte differ from
# getc and getbyte , respectively, in the same way
file.read

p file.getc       #=> nil
# p file.readchar #=> EOFError: end of file reached

p file.getbyte    #=> nil
# p file.readbyte #=> EOFError: end of file reached

file.rewind
