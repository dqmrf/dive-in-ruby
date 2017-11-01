str = "United\nStatas\nof America"
str.each_line {|line| puts line }
=begin
United
Statas
of America
=end

# The string is split at the end of each line—or, more strictly speaking, at
# every occurrence of the current value of the global variable $/ . If you
# change this variable, you’re changing the delimiter for what Ruby considers
# the next line in a string:
str = "United!Statas!of America"
$/ = '!'
str.each_line {|line| puts line }
=begin
United!
Statas!
of America
=end
