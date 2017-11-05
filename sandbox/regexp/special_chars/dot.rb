# [1]> .
(/.ejected/).match('rejected')     #=> #<MatchData "rejected">
(/.ejected/).match('dejected')     #=> #<MatchData "dejected">
(/.ejected/).match('___ejected')   #=> #<MatchData "_ejected">
(/.ejected/).match('___ejected__') #=> #<MatchData "_ejected">
(/.ejected/).match('ejected')      #=> nil
