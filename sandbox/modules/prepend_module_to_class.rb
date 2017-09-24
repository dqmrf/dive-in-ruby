module MeFirst
  def report
    p "Hello from module MeFirst!"
  end
end

module MeSecond
  def report
    p "Hello from module MeSecond!"
  end
end

class Person
  prepend MeFirst
  include MeSecond

  def report
    p "Hello from class!"
  end
end

p = Person.new
p.report           #=> "Hello from module MeFirst!"
p Person.ancestors #=> [MeFirst, Person, MeSecond, Object, Kernel, BasicObject]
