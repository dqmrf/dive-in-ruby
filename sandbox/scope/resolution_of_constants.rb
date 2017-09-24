module M
  class C
    X = 2
    class D
      module N
        X = 1
      end
    end
  end
end

p M::C::D::N::X #=> 1
p M::C::X       #=> 2
