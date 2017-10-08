class Banner
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def to_s
    text
  end

  def +@
    text.upcase
  end

  def -@
    text.downcase
  end

  def !
  # def !@
    text.reverse
  end
end

banner = Banner.new('This is a Banner!')
puts banner  #=> This is a Banner!
puts +banner #=> THIS IS A BANNER!
puts -banner #=> this is a banner!
puts !banner #=> !rennaB a si sihT
