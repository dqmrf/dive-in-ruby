h = { 1 => "one", 2 => "two" }
print h.invert; puts "\n" #=> {"one"=>1, "two"=>2}

# Be careful when you invert hashes. Because hash keys are unique, but values aren’t,
# when you turn duplicate values into keys, one of the pairs is discarded:
h = { 1 => "one", 2 => "more than 1", 3 => "more than 1" }
print h.invert; puts "\n" #=> {"one"=>1, "more than 1"=>3}
