module M
  def report
    p "'report' method in module M"
  end
end

class C
  include M

  def report
    p "'report' method in class C"
    super
    p "Back from the 'super' call."
  end
end

c = C.new
c.report # Output:
=begin
"'report' method in class C"
"'report' method in module M"
"Back from the 'super' call."
=end
