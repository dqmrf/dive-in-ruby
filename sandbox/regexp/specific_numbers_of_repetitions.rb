# [1]> Three
p '555-1212'.match(/\d{3}-\d{4}/)      #=> #<MatchData "555-1212">

# [2]> Three or 4
p '555-1212'.match(/\d{3,4}-\d{4}/)    #=> #<MatchData "555-1212">
p '5535-1212'.match(/\d{3,4}-\d{4}/)   #=> #<MatchData "5535-1212">

# [2]> Three or more
p '5535-1212'.match(/\d{3,}-\d{4}/)    #=> #<MatchData "5535-1212">
p '55-1212'.match(/\d{3,}-\d{4}/)      #=> nil

# [3]> Atom
p 'Michael PELYKH'.match(/([A-Z]{6})/) #=>  #<MatchData "PELYKH" 1:"PELYKH">
p 'Michael PELYKH'.match(/([A-Z]{7})/) #=>  nil
p 'Michael PELYKH'.match(/[A-Z]{6}/)   #=>  #<MatchData "PELYKH">
