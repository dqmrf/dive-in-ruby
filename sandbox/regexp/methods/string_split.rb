# [1]> Basic usage
p 'Ruby'.split(//) #=> ["R", "u", "b", "y"]

# [2]> Converting configuration files
line = 'first_name=michael;last_name=pelykh;country=israel'
record = line.split(/=|;/)
p record #=> ["first_name", "michael", "last_name", "pelykh", "country", "israel"]

# Populate hash with entries of this kind:
record = Hash[*line.split(/=|;/)]
p record #=> {"first_name"=>"michael", "last_name"=>"pelykh", "country"=>"israel"}

# [3]> You can provide a second argument to split; this argument limits the
#      number of items returned. In this example:
str = '1, 2, 3, 4, 5, 6'
p str.split(/,\s*/)    #=> ["1", "2", "3", "4", "5", "6"]
p str.split(/,\s*/, 3) #=> ["1", "2", "3, 4, 5, 6"]
