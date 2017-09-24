# Expl 1
a = "Hello"
b = a
a.replace("Goodbye")
p a #=> "Goodbye"
p b #=> "Goodbye"

# Expl 2
a = "Hello"
b = a
a = "Goodbye"
p a #=> "Goodbye"
p b #=> "Hello"
