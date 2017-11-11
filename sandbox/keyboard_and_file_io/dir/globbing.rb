dirname = File.join(File.dirname(__FILE__), '/sandbox/entries')

# [1]> Glob
ruby_files = dirname + '/.*rb'
p Dir[ruby_files]      #=> ["sandbox/keyboard_and_file_io/dir/sandbox/entries/.hidden_file.rb"]
p Dir.glob(ruby_files) #=> ["sandbox/keyboard_and_file_io/dir/sandbox/entries/.hidden_file.rb"]


# [2]> Glob with flags
# The glob method is largely equivalent to the [] method but a little more
# versatile: you can give it not only a glob pattern but also one or more flag
# arguments that control its behavior.
# For example, if you want to do a case-insensitive glob, you can pass the
# File::FNM_CASEFOLD flag:
match_info = dirname + '/*info*'

p Dir.glob(match_info) #=> ["sandbox/keyboard_and_file_io/dir/sandbox/entries/info.md"]
p Dir.glob(match_info, File::FNM_CASEFOLD) #=>
# ["sandbox/keyboard_and_file_io/dir/sandbox/entries/INFORMATION.md",
#  "sandbox/keyboard_and_file_io/dir/sandbox/entries/info.md"]

# Another useful flag is FNM_DOTMATCH, which includes hidden dot files in the results
p Dir.glob(match_info, File::FNM_DOTMATCH)
# ["sandbox/keyboard_and_file_io/dir/sandbox/entries/.information.md",
#  "sandbox/keyboard_and_file_io/dir/sandbox/entries/info.md"]

# If you want to use two flags, you combine them with the bitwise OR operator:
p Dir.glob(match_info, File::FNM_DOTMATCH | File::FNM_CASEFOLD)
# ["sandbox/keyboard_and_file_io/dir/sandbox/entries/INFORMATION.md",
#  "sandbox/keyboard_and_file_io/dir/sandbox/entries/.information.md",
#  "sandbox/keyboard_and_file_io/dir/sandbox/entries/info.md"]


# [3]> Sample
