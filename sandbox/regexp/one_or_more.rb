# [1]>
p 'A234A'.match(/\d+/) #=> #<MatchData "234">

# [2]>
/(\d+)/.match("Digits-R-Us 2345")
p $1                   #=> 2345
