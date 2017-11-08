str = 'def'
string = 'def __init__.self'

p string.match(/#{str}\s\s*__init__/) #=> #<MatchData "def __init__">
