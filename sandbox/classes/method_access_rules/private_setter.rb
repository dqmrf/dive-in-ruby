class Dog
  attr_reader :age, :dog_years

  def age=(years)
    @age = years
    self.dog_years = years * 7
    # this = self
    # this.dog_years = years * 7 #=> private method `dog_years=' called for #<Dog:0x0056221d8214d8 @age=10> (NoMethodError)
  end

  def dog_years=(years)
    @dog_years = years
  end

  private :dog_years=
end

rover = Dog.new
rover.age = 10
p "Rover is #{rover.dog_years} in dog years."
