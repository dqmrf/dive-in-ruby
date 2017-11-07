# [1]> The conditional expression (?(1)b|c) matches b if capture number 1 is
#      matched; otherwise it matches c:
p 'ab'.match(/(a)?(?(1)b|c)/)     #=> #<MatchData "ab" 1:"a">
p 'b'.match(/(a)?(?(1)b|c)/)      #=> nil
p 'c'.match(/(a)?(?(1)b|c)/)      #=> #<MatchData "c" 1:nil>

p 'c'.match(/(a)?(?(1)b|(c))/)    #=> #<MatchData "c" 1:nil 2:"c">
p 'c'.match(/(a)?(?(1)(b)|(c))/)  #=> #<MatchData "c" 1:nil 2:nil 3:"c">
