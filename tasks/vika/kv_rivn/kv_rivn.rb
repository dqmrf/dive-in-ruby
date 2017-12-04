class KvRivn
  def self.solve(*args)
    @a, @b, c = args
    @discr = @b**2 - 4*@a*c

    if @discr > 0
      [calc(1), calc(-1)]
    elsif @discr == 0
      [-@b / 2 * @a]
    else
      []
    end
  end

  private

  def self.calc(status)
    (-@b + status*sqrt2(@discr)) / 2 * @a
  end

  def self.sqrt2(val)
    val**(2**-1)
  end
end

p KvRivn.solve(1, 8, 1) #=> [-0.12701665379258298, -7.872983346207417]
p KvRivn.solve(1, 4, 1) #=> [-0.2679491924311228, -3.732050807568877]
