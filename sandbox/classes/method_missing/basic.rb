o = Object.new
# o.blah #=> undefined method `blah' for #<Object:0x00008e047cb360> (NoMethodError)

def o.method_missing(m, *args)
  puts "You can't call method '#{m}', on this object; please try again."
end

o.blah #=> You can't call method 'blah', on this object; please try again.
