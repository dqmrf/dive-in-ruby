# In this example, a and b indicate required keyword arguments.
# You can’t call the method without them:
def m(a:, b:)
  p a, b
end
m(a: 1, b: 2)

# You can make keyword arguments optional by supplying default values for your
# named parameters - which makes the parameter list look even more hashlike:
def n(a: 1, b: 2)
  p a, b
end
n

# If the method’s parameter list includes a double-starred name, the variable of
# that name will sponge up all unknown keyword arguments into a hash, as follows
def k(a: :a, b: :b, **c)
  p a, b, c
end
k(a: :updated_a, y: :y, z: :z)
=begin
:updated_a
:b
{:y=>:y, :z=>:z}
=end

# And of course, you can combine keyword and nonkeyword arguments:
def f(a, b, *c, x: :x, y: :y, **z)
  p a, b, c, x, y, z
end
f(1, 2, 3, 4, x: :x1, y: :y1, m: :extra)
=begin
1
2
[3, 4]
:x1
:y1
{:m=>:extra}
=end
