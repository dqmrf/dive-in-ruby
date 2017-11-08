# [1]> sub
p 'typigraphical error'.sub(/i/, 'o') #=> "typographical error"

# You can use a code block instead of the replacement-string argument:
capitalized_vowels = 'capitalize the first vowel'.sub(/[aeiou]/) {|n| n.upcase }
p capitalized_vowels #=> "cApitalize the first vowel"

# [2]> gsub
capitalized_vowels = 'capitalize the first vowel'.gsub(/[aeiou]/) {|n| n.upcase }
p capitalized_vowels #=> "cApItAlIzE thE fIrst vOwEl"

p 'capitalize every word'.gsub(/\b\w/) {|n| n.upcase } #=> "Capitalize Every Word"

# [3]> Using the captures in a replacement string:
p 'iMchael'.sub(/([a-z])([A-Z])/, '\2\1')      #=> "Michael"
p 'ichMael'.sub(/(^[a-z]+)([A-Z])/, '\2\1')    #=> "Michael"

# Double every word
p 'double every word'.gsub(/\b(\w+)/, '\1 \1') #=> "double double every every word word"
