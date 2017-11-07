str = "123 456. 789"
m = /\d+(?=\.)/.match(str)
p m[0] #=> "456"

str = "wd40. 789"
m = /[A-Za-z\d]+(?=\.)/.match(str)
p m[0] #=> "wd40"
