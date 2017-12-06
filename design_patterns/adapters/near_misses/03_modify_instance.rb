require_relative 'renderer'
require_relative 'text_object'
require_relative 'text_object_british'

text_obj = BritishTextObject.new('Text Object', 508, 'green')

class << text_obj
  def color
    colour
  end

  def text
    string
  end

  def size_inches
    size_mm / 25.4
  end
end

renderer = Renderer.new
p renderer.render(text_obj)
