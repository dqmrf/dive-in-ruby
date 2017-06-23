# Example: 1
ample: 1 (Single quotes)
puts %q(Don't worry about escaping ' characters!) #=> Don't worry about escaping ' characters!


# Example: 2 (Double quotes)
puts %Q|He said "Whatsup?"| #=> He said "Whatsup?"


# Example: 3
puts %q_This string literal contains \_underscore\__ #=> This string literal contains _underscore_


# Example: 4 (or you can use another limiter)
puts %Q!This string literal contains _underscore_! #=> This string literal contains _underscore_


# Example: 5
puts %((1+(2+3)) = #{(1+(2+3))}) #=> (1+(2+3)) = 6


# Example: 6
puts %(A mismatched pattern \( must be escaped) #=> A mismatched pattern ( must be escaped
