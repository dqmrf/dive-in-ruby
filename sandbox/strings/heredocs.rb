# Ex 1
document = <<HERE
This is a 
string literal
HERE

puts "#{document}\n"

# Ex 2
greet = <<HERE + <<THERE + "World!"
Hello
HERE
There
THERE

puts greet

# Ex 3
app = 'Application'
document = <<-"# # #" # You can use anything instead of '# # #'
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <title>React on Rails</title>
  </head>

  <body>
    <div id="app">#{app}</div>
  </body>
  
</html>
# # #

puts document
