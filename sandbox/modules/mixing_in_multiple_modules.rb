module M
  def report
    p "'report' method in module M"
  end
end

module N
  def report
    p "'report' method in module N"
  end
end

class C
  include N
  include M
  # include N # Including a module more than once has no effect.
end

c = C.new
c.report #=> "'report' method in module M"
