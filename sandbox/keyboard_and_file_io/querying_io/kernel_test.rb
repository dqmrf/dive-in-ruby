filename = File.join(File.dirname(__FILE__), '../data/records.txt')

# Here’s an example that finds out whether /tmp exists:
p test ?e, '/tmp'   #=> true
p test ?e, '/wtf'   #=> false

# Is dir?
p test ?d, '/tmp'   #=> true

# Is file?
p test ?f, '/tmp'   #=> false
p test ?f, filename #=> true

# Is empty?
p test ?z, filename #=> false
p test ?z, '/wtf'   #=> false
