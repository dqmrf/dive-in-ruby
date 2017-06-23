# Example: 1
number = 1
# puts "Hi planet " + number # This doesn't work
puts "Hi planet " + 1.to_s
puts "Hi planet #{number}\n\r" # This works fine


# Example: 2
greeting = "Hello"
greeting << " " << "World" #=> Hello World
puts "#{greeting}\n\r"


# Example: 3
puts alphabet = "A" #=> A
puts alphabet << ?B #=> AB
puts alphabet << 67 #=> ABC
# alphabet << 256   #=> ERROR because 256 > 255
puts "\n"


# Example: 4
a = 0
puts "#{a=a+1} " * 3 #=> 1 1 1 (but not 1 2 3)
puts "\n"


# Example: 5
s = "hello"

puts s[s.length-1] #=> o
puts s[-1]         #=> o
puts s[-2]         #=> l
puts s[-s.length]  #=> h

s[0] = ?H    #=> Hello
s[-1] = ?O   #=> HellO
puts s       #=> HellO

s[-1] = ""   #=> Hell
s[-1] = "p!" #=> Help
puts s       #=> Help

puts s[0,2]  #=> He
