class Person
  attr_accessor :name

  def to_str
    name
  end
end

misha = Person.new
misha.name = 'Misha'
puts 'misha is named ' + misha + '.'
