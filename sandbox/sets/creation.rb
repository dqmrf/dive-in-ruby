require 'set'

new_england = ['Connecticut', 'Maine', 'Massachusetts',
               'New Hampshire', 'Rhode Island', 'Vermont']
state_set = Set.new(new_england)
puts state_set #=> #<Set:0x0055d91825d450>

names = ['David', 'Yukihiro', 'Chad', 'Amy']
name_set = Set.new(names) { |name| name.upcase }
#<Set: {"AMY", "YUKIHIRO", "CHAD", "DAVID"}>
