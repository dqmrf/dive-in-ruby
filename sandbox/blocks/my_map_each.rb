require_relative 'my_each'

class Array
  def my_map
    acc = []
    self.my_each { |e| acc << yield(e) }
    acc
  end
end

# names = ['Misha', 'Pelykh']
# p names.my_map { |name| name.upcase } #=> ["MISHA", "PELYKH"]
