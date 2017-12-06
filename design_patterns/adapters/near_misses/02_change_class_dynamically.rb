require_relative 'renderer'
require_relative 'text_object'
require_relative 'text_object_british'

class BritishTextObject
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

text_obj = TextObject.new('Text Object', 20, 'green')
text_obj_british = BritishTextObject.new('Text Object', 508, 'green')

renderer = Renderer.new
p renderer.render(text_obj)
p renderer.render(text_obj_british)
