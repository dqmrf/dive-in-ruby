str = 'Michael L. Pelykh'
str_reduced = 'Michael Pelykh'

re = /(?<first>\w+)\s+(?<middle>(\w\.)\s+)?(?<last>\w+)/
re_without_names = /(\w+)\s+(\w\.\s+)?(\w+)/

str.match(re)         #=> #<MatchData "Michael L. Pelykh" first:"Michael" middle:"L. " last:"Pelykh">
str_reduced.match(re) #=> #<MatchData "Michael Pelykh" first:"Michael" middle:nil last:"Pelykh">

m = str.match(re)
p m[:first] #=> "Michael"
p m[:last]  #=> "Pelykh"
