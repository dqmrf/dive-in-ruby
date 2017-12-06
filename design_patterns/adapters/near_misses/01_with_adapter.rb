require_relative 'renderer'
require_relative 'text_object'
require_relative 'text_object_british'


class BritishTextObjectAdapter < TextObject
  def initialize(bto)
    @bto = bto
  end

  def text
    @bto.string
  end

  def size_inches
    @bto.size_mm / 25.4
  end

  def color
    @bto.colour
  end
end

text_obj = TextObject.new('Text Object', 20, 'green')
text_obj_british = BritishTextObject.new('Text Object', 508, 'green')

renderer = Renderer.new
p renderer.render(text_obj)
p renderer.render(BritishTextObjectAdapter.new(text_obj_british))
