$gvar = "I'm a global variable"

class C
  def examine_global
    puts $gvar
  end
end

c = C.new
c.examine_global
