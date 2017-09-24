require 'pry'

class Person
  PEOPLE = []

  attr_reader :name, :hobbies, :friends

  def initialize name
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end

  def has_hobby hobby
    @hobbies << hobby
  end

  def has_friend friend
    @friends << friend
  end

  def self.method_missing(m, *args)
    method = m.to_s
    prefix = 'all_with_'

    if method.start_with? prefix
      attribute = method[prefix.length..-1]

      if self.public_method_defined? attribute
        PEOPLE.find_all do |person|
          person.send(attribute).include?(args[0])
        end
      else
        raise ArgumentError, "Can't find method '#{attribute}' for #{self}:Class"
      end
    else
      super
    end
  end
end

misha = Person.new 'Misha'
vika = Person.new 'Vika'
nothing = Person.new 'Nothing'

vika.has_friend misha
nothing.has_friend misha

Person.all_with_friends(misha).each do |person|
  puts "#{person.name} is friends with #{misha.name}"
end
