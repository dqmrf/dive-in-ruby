# What will be in the various captures?
# Well, just count opening parentheses from the left.
m = /((a)((b)c))/.match("abc")
p m.captures #=> ["abc", "a", "bc", "b"]
