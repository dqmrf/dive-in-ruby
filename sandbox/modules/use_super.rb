module A
  def talk
    puts 'Talk something'
  end
end


module B
  include A

  def talk
    super if true
  end
end

class C
  include B
end

c = C.new
c.talk
