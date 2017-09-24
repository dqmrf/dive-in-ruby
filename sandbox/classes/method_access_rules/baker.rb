class Cake
  def initialize(batter)
    @batter = batter
    @backed = true
  end
end

class Egg
end

class Flour
end

class Baker
  def bake_cake
    @batter = []
    pour_flour
    add_egg
    strip_batter
    return Cake.new(@batter)
  end

  def pour_flour
    @batter.push(Flour.new)
  end

  def add_egg
    @batter.push(Egg.new)
  end

  def strip_batter
  end

  private :pour_flour, :add_egg, :strip_batter
end
