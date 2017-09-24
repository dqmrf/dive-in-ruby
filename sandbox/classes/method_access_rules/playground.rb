class A
  protected

  def prot
    puts 'I am a protected method'
  end

  private

  def prvt
    puts 'I am a private method'
  end
end

class B < A
  def initialize
    prot
    prvt
  end
end

B.new

# b = B.new
# b.prot #=> protected method `prot' called for #<B:0x0055ffa82a17e8> (NoMethodError)
# b.prvt #=> private method `prvt' called for #<B:0x00559c09e21788> (NoMethodError)
