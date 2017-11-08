# [1]> Regexp.escape
string = 'michael^abc:pelykh'
p string.match(/#{Regexp.escape('^abc:')}/) #=> #<MatchData "^abc:">
p string.match(/\^\w*?:/)                   #=> #<MatchData "^abc:">
p string.match(/^\^\w*?:/)                  #=> nil

string = '^abc:pelykh'
p string.match(/^\^\w*?:/)                  #=> #<MatchData "^abc:">
