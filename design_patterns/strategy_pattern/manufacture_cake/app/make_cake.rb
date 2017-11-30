require_relative 'make_cake/make_batter'
require_relative 'make_cake/fill_pan'
require_relative 'make_cake/bake'
require_relative 'make_cake/frost'

class MakeCakeTask < CompositeTask
  def initialize
    super('Make cake')
    add_sub_task( MakeBatterTask.new )
    add_sub_task( FillPanTask.new )
    add_sub_task( BakeTask.new )
    add_sub_task( FrostTask.new )
  end
end
