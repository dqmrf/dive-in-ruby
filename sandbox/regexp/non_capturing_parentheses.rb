# Unlike a zero-width assertion, a (?:) group does consume characters.
# It just doesn’t save them as a capture.
str = 'abc def ghi'
match = str.match(/(abc) (?:def) (ghi)/)
p match #=> #<MatchData "abc def ghi" 1:"abc" 2:"ghi">
