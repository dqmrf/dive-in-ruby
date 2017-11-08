p ['USA', 'UK', 'France', 'Germany'].grep(/[a-z]/)               #=> ["France", "Germany"]

# You can accomplish the same thing with select , but it’s a bit wordier:
p ['USA', 'UK', 'France', 'Germany'].select {|c| /[a-z]/ === c } #=> ["France", "Germany"]

# You can also supply a code block to grep:
countries = ['USA', 'UK', 'France', 'Germany'].grep(/[a-z]/).map(&:upcase)
p countries                                                      #=> ["FRANCE", "GERMANY"]
