str = 'Hello'
p str.each_byte            #=> #<Enumerator: "Hello":each_byte>
p str.enum_for(:each_byte) #=> #<Enumerator: "Hello":each_byte>
