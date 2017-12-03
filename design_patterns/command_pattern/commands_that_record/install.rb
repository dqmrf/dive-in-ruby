require 'pry'
require_relative 'command'
require_relative 'commands'
require_relative 'composite_command'
require_relative 'helpers'

filename = filename_relative('data/sample.txt')
filename2 = filename_relative('data/sample2.txt')

cmds = CompositeCommand.new
cmds.add_command(CreateFile.new(filename, "hello world\n"))
cmds.add_command(DeleteFile.new(filename))

cmds.execute
cmds.unexecute
