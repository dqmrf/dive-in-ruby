languages = %w{ Ruby C APL Perl Smalltalk }

# [1] Min
puts languages.min                              #=> APL
puts languages.min { |a, b| a.size <=> b.size } #=> C

# A more streamlined block-based approach, though, is to use min_by or max_by,
# which perform the comparison implicitly:
puts languages.min_by { |lang| lang.size }      #=> C

# [2] Minmax (and the corresponding minmax_by method)
print languages.minmax; puts "\n"               #=> ["APL", "Smalltalk"]

# [3] Min of hash
state_hash = { 'New Yourk': 'NY', 'Maine': 'ME', 'Alaska': 'AK', 'Alabama': 'AL'}
print state_hash.min; puts "\n"                 #=> [:Alabama, "AL"]
min_by_key = state_hash.min_by { |name, abbr| name }
min_by_value = state_hash.min_by { |name, abbr| abbr }

print min_by_key; puts "\n"                     #=> [:Alabama, "AL"]
print min_by_value; puts "\n"                   #=> [:Alaska, "AK"]
