require 'strscan'

ss = StringScanner.new('Testing string scanning')

# Scans string until regexp matches
p ss.scan_until(/ing/) #=> "Testing"
# Examines new pointer position
p ss.pos               #=> 7
# Looks at next 7 bytes (but doesn't advance pointer)
p ss.peek(7)           #=> " string"
# Undoes previous scan
p ss.unscan            #=> #<StringScanner 0/23 @ "Testi...">
p ss.reset             #=> #<StringScanner 0/23 @ "Testi...">

p ss.pos               #=> 0

# Moves pointer last regexp
p ss.skip(/Test/)      #=> 4
# Examines part of string scanning
p ss.rest
