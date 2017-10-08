require_relative 'my_times'

class Array
  def my_each
    size.my_times do |i|
      yield self[i]
    end

    self
  end
end

# array = [1, 2, 3, 4, 5]
# array.my_each { |e| puts "The block just got handed #{e}." }
