def change_string str
  str.replace "Changed string"
end

# Expl 1
a = "Original string"
b = "Original string"

change_string a
p a #=> "Changed string"

change_string b.dup
p b #=> "Original string"


# Expl 2
a = "Original string"

a.freeze

# change_string a #=> can't modify frozen String (RuntimeError)
# change_string a.clone #=> can't modify frozen String (RuntimeError)
change_string a.dup
p a #=> "Original string"

# Expl 3 (With arrays)
# You can’t change the array, but the strings inside the array aren’t frozen
numbers = ['one', 'two', 'three']
numbers.freeze
# numbers[1] = 'second'  #=> can't modify frozen Array (RuntimeError)
numbers[1].replace 'second'
p numbers                #=> ["one", "second", "three"]
