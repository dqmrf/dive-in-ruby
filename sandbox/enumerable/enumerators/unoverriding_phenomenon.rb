h = { cat: 'feline', dog: 'canine', cow: 'bovine' }

# [1]
h.select {|key,value| key =~ /c/ }
#=> {:cat=>"feline", :cow=>"bovine"}

# [2]
e = h.enum_for(:select)
#=> #<Enumerator: {:cat=>"feline", :dog=>"canine", :cow=>"bovine"}:select>
e.each {|key,value| key =~ /c/ }
#=> {:cat=>"feline", :cow=>"bovine"}

# [3]
e = h.to_enum
#=> #<Enumerator: {:cat=>"feline", :dog=>"canine", :cow=>"bovine"}:each>
h.each { }
#=> {:cat=>"feline", :dog=>"canine", :cow=>"bovine"}
e.each { }
#=> {:cat=>"feline", :dog=>"canine", :cow=>"bovine"}

e.select {|key,value| key =~ /c/ }
#=> [[:cat, "feline"], [:cow, "bovine"]]

# The key is that the call to select in the last example is a call to the select method of the
# enumerator, not the hash. And the select method of the enumerator is built directly on the
# enumerator’s each method. In fact, the enumerator’s select method is Enumerable#select , which
# always returns an array. The fact that Hash#select doesn’t return an array is of no interest to the
# enumerator.
