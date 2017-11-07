p 'abc!qwe!asd!f'.match(/.+!/)[0]         #=> "abc!qwe!asd!"
p 'abc!qwe!asd!'.match(/.+?!/)[0]         #=> "abc!"
p 'bc!qwe!asd!'.match(/\w{3}+!/)[0]       #=> "qwe!"
p 'Digits-R-Us 2345'.match(/\d+?/)[0]     #=> "2"
p 'Digits-R-Us 2345'.match(/\d+4/)[0]     #=> "234

p 'Digits-R-Us 2345'.match(/(\d+)(5)/)    #=> #<MatchData "2345" 1:"234" 2:"5">
