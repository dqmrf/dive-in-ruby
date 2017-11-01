require 'set'

# 1) Adding new values
tri_state = Set.new(['New Jersey', 'New York'])
tri_state << 'Los Angeles'
#<Set: {'New Jersey', 'New York', 'Los Angeles'}

# If you try to add an object that’s already in the set (or an object
# that’s content-equal to one that’s in the set), nothing happens:
tri_state << 'Los Angeles'
#<Set: {'New Jersey', 'New York', 'Los Angeles'}

# The << method is also available as add.
# There’s also a method called add?, which differs from add in that it returns nil
tri_state.add?('San Francisco') #=> nil

# 2) Deleting
tri_state << 'Pennsylvania'
tri_state.delete('Los Angeles')
tri_state.delete('San Francisco')
#<Set: {'New Jersey', 'New York', 'Pennsylvania'}
# Deleting an object that isn’t in the set doesn’t raise an error.
# As with adding a duplicate object, nothing happens.
