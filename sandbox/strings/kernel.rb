puts `ls` + "\r\n"
# or
puts Kernel, `ls` + "\r\n"
# or 
puts %x[ls]
