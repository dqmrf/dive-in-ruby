class BakeTask < Task
  def initialize
    super('Bake the cake')
  end

  def get_time_required
    10.0
  end
end
