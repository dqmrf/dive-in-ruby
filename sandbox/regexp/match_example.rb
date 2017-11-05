# [1]> Method 'match'
p /abc/.match('The alphabet starts with abc.') #=> #<MatchData "abc">
p 'The alphabet starts with abc.'.match(/abc/) #=> #<MatchData "abc">
# Otherwise: nil

# [2]> Operator =~
p /abc/ =~ 'The alphabet starts with abc.'     #=> 25
p 'The alphabet starts with abc.' =~ /abc/     #=> 25
