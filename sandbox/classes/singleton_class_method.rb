string = 'a string'
p string.singleton_class.ancestors #=>
# [#<Class:#<String:0x00563a0e92d850>>, String, Comparable, Object, Kernel, BasicObject]
class << string
  p ancestors #=>
  # [#<Class:#<String:0x00563a0e92d850>>, String, Comparable, Object, Kernel, BasicObject]
end
