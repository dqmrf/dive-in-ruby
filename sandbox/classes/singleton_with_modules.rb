# [1]>
module TalkAbility
  def talk
    puts 'Hello everybody!'
  end
end

class Person
  class << self
    include TalkAbility
  end
end

Person.talk #=> Oh s**t, I'm sorry


# [2]>
class Person
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end

module Secretive
  def name
    '[not available]'
  end
end

michael = Person.new('Michael')
pavel = Person.new('Pavel')
leo = Person.new('Leonardo')

class << leo
  include Secretive
end

p [michael, pavel, leo].map(&:name) #=> ["Michael", "Pavel", "[not available]"]


# [3]>
module M
  def talk
    puts 'Hello from module "M"'
  end
end

class C
  def talk
    puts 'Hello from class "C"'
  end
end

c = C.new
c.talk        #=> Hello from class "C"

class << c
  include M
  p ancestors #=> [#<Class:#<C:0x0056415c5f7140>>, M, C, Object, Kernel, BasicObject]
end
c.talk        #=> Hello from module "M"


# [4]>
module B
  def talk
    puts 'Hello from module "B"'
  end
end

class A
  include B
end

a = A.new
a.talk      #=> Hello from module "B"

class << a
  include B
  p ancestors #=> [#<Class:#<A:0x005571c4cd5c68>>, A, B, Object, Kernel, BasicObject]
end
