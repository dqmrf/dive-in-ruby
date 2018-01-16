class Person
  attr_writer :age

  def older_than?(other_person)
    age > other_person.age
  end

  protected

  def age
    @age
  end
end

michael = Person.new
michael.age = 21

pavel = Person.new
pavel.age = 30

# p pavel.age
puts pavel.older_than?(michael)
