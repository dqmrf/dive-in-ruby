# [1]>
doc = <<-HEREDOC
</ poem>
</poem>
</    poem>
</poem
>
HEREDOC

re = /<\s*\/\s*poem\s*>/

p doc.match(re) #=> #<MatchData "</ poem>">

# [2]>
str = 'A234A'
re = /A\d*A/

p str.match(re) #=> #<MatchData "A234A">
