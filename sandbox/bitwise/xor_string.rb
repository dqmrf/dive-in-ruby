require 'pry'

class String
  def ^(key)
    kenum = key.each_byte.cycle
    each_byte.map {|byte| byte ^ kenum.next }
             .pack('C*')
             .force_encoding(self.encoding)
  end
end

str = 'This is a string'
key = 'secret!'
x = str ^ key
orig = x ^ key

p x    #=> "'\r\n\u0001E\u001DRS\u0004C\u0001\u0011\u0006H\u001D\u0002"
p orig #=> "This is a string"
