# [1]> Only: Mr, Mrs, Mr., Mrs.
str_mr = 'Hello Mr. Michael'
str_mrs = 'Hello Mrs. Yui'

re = /Mrs?\.?/

p str_mr.match(re)[0]  #=> "Mr."
p str_mrs.match(re)[0] #=> "Mrs."

# [2]> 1, 55, 03, and so forth...
str = 'Linux009'
re = /(\d\d?)/
p str.match(re)[0]     #=> "00"
