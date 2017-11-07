string = "My Phone Number is (123) 555-1234. That's it!"
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/

m = phone_re.match(string)

p m.pre_match  #=> "My Phone Number is "
p m.post_match #=> ". That's it!"
p m.begin(1)   #=> 20
p m.begin(2)   #=> 25
p m.begin(3)   #=> 29
p m.end(1)     #=> 23
p m.end(2)     #=> 28
p m.end(3)     #=> 33
