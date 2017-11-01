require 'set'

small_states = Set.new(['Connecticut', 'Delaware', 'Rhode Island'])
tiny_states = Set.new(['Delaware', 'Rhode Island'])
puts tiny_states.subset?(small_states)   #=> true
puts small_states.superset?(tiny_states) #=> true
