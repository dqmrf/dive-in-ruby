string = 'Peel,Emma,Mrs.,talented amateur'

# [1]> Without parentheses
match = /[A-Za-z]+,[A-Za-z]+,Mrs?\./
string.match(match)   #=> #<MatchData "Peel,Emma,Mrs.">

# [2]> With parentheses
match = /([A-Za-z]+),[A-Za-z]+,(Mrs?\.)/
res = string.match(match) #=> #<MatchData "Peel,Emma,Mrs." 1:"l" 2:"Mrs.">
p res[1]            #=> "Peel"
p res[2]            #=> "Mrs."
p $1                #=> "Peel"
p $2                #=> "Mrs."
