colors = %w{ red orange yellow green blue indigo violet }
mix = [75, 'hello', 10..20, 'goodbye']

# = 1)
# print colors.grep(/o/); puts "\n"  #=> ["orange", "yellow", "indigo", "violet"]
# print mix.grep(String); puts "\n"  #=> ["hello", "goodbye"]
# print mix.grep(Integer); puts "\n" #=> [75]
# print mix.grep(50..100); puts "\n" #=> [75]

# = 2)
print colors.grep(/o/) { |color| color.capitalize }; puts "\n" #=> ["Orange", "Yellow", "Indigo", "Violet"]

# = 3) The same as 2
print colors.select { |item| item.match(/o/) }.map { |item| item.capitalize }; puts "\n"
