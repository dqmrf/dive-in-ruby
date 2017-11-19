class Regexp
  alias __old_match__ match

  def match(string)
    __old_match__(string) || []
  end
end

string = 'A test string'
re = /A (sample) string/
substring = re.match(string)[1]

p substring        #=> nil
p re.match(string) #=> []
p string.match(re) #=> []
