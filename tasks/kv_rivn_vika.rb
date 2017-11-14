def solve_kv(*args)
  a, b, c = args
  d = b**2 - 4*a*c

  if d > 0
    x = (-b + sqrt2(d)) / 2 * a
    y = (-b - sqrt2(d)) / 2 * a
    return [x, y]
  elsif d == 0
    x = -b / 2 * a
    return [x]
  end

  []
end

def sqrt2(val)
  val**(2**-1)
end

p solve_kv(1, 8, 1)
p solve_kv(1, 4, 1)
