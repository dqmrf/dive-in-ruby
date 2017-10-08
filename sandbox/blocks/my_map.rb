class Array
  def my_map
    c = 0
    acc = []

    until c == size
      acc << yield(self[c])
      c += 1
    end

    acc
  end
end

names = ['Misha', 'Pelykh']
p names.my_map { |name| name.upcase } #=> ["MISHA", "PELYKH"]
