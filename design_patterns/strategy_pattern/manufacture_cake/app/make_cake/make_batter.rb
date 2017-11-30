require_relative 'make_batter/add_dry_ingredients'
require_relative 'make_batter/add_liquids'
require_relative 'make_batter/mix'

class MakeBatterTask < CompositeTask
  def initialize
    super('Make butter')
    add_sub_task( AddDryIngredientsTask.new )
    add_sub_task( AddLiquidsTask.new )
    add_sub_task( MixTask.new )
  end
end
