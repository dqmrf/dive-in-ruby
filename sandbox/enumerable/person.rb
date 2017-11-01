class Person
  attr_accessor :age

  def initialize(options)
    self.age = options[:age]
  end

  def teenager?
    (13..19) === age
  end
end

people = 10.step(25, 3).map { |i| Person.new(age: i) }
puts people[3].teenager?  #=> true

teenagers = people.partition { |item| item.teenager? }
print teenagers; puts "\n"

print teenagers[0].map { |item| item.age }; puts "\n" #=> [13, 16, 19]
