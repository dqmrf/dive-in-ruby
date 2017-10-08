class Person
  attr_accessor :name, :age, :email

  def to_ary
    [name, age, email]
  end
end

misha = Person.new
misha.name = 'Misha'
misha.age = 20
misha.email = 'michaelpelykh@gmail.com'
array = []
array.concat(misha)
p array #=> ["Misha", 20, "michaelpelykh@gmail.com"]
