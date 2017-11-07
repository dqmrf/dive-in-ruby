# The lookahead assertions have lookbehind equivalents. Here’s a regexp that
# matches the string PELYKH only when it’s preceded by 'Michael':
str = 'Michael PELYKH is stupid guy'

match = str.match(/(?<=Michael )PELYKH/)
p match[0] #=> "PELYKH"

# Conversely, here’s one that matches it only when it isn’t preceded by 'Michael':
p str.match(/(?<!Michael )PELYKH/)  #=> nil
p str.match(/(?<!Leonardo )PELYKH/) #=> #<MatchData "PELYKH">
