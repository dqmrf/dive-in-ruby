array = %w{ Michael Pavel Leonardo }

def give_me_an_array(array)
  p array.each { }      #=> ["Michael", "Pavel", "Leonardo"]
  # array << 'Trash'    #=> undefined method `<<' for #<Enumerator: ["Michael", "Pavel", "Leonardo"]:each>
  # array.push('Trash') #=> undefined method `push' for #<Enumerator: ["Michael", "Pavel", "Leonardo"]:each>
end

give_me_an_array(array.to_enum)
