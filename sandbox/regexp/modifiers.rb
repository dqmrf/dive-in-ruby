# [1]> Case insensitive - i
p 'dABCrb'.match(/abc/i) #=> #<MatchData "ABC">

# [2]> The m (multiline) modifier has the effect that the wildcard dot
#      character, which normally matches any character except newline,
#      will match any character, including newline.
str = "This (including\nwhat's in parens\n) takes up three lines."
p str.match(/\(.*?\)/m) #=> #<MatchData "(including\nwhat's in parens\n)">
p str.match(/\(.*?\)/)  #=> nil

# [3]> x. Instead of including it literally in the pattern, it ignores it unless
#      it’s escaped with a backslash.
str = '(123) 543-3453'

re = /\((\d{3})\)\s(\d{3})-(\d{4})/
p str.match(re)               #=> #<MatchData "(123) 543-3453" 1:"123" 2:"543" 3:"3453">

# The point of the x modifier is to let you add comments to your regular expressions:
re_with_comments = /
\((\d{3})\)     # 3 digits inside literal parens (area code)
\s              # One space character
(\d{3})         # 3 digits (exchange)
-               # Hyphen
(\d{4})         # 4 digits (second part of number
/x
p str.match(re_with_comments) #=> #<MatchData "(123) 543-3453" 1:"123" 2:"543" 3:"3453">
