class ArrayIterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def has_next?
    @index < @array.length
  end

  def item
    @array[@index]
  end

  def next_item
    value = @array[@index]
    @index += 1
    value
  end
end

# [1]> With array
array = %w{ red green blue }
i = ArrayIterator.new(array)

while i.has_next?
  puts "item #{i.next_item}"
end
# item red
# item green
# item blue


# [2]> With string
i = ArrayIterator.new('abc')
while i.has_next?
  puts "item #{i.next_item}"
end
# item a
# item b
# item c
