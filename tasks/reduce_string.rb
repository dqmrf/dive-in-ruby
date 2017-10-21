def reduce_string(str, length)
  reduced_str = str[0..length.to_i]
  index = reduced_str.rindex(/\s/)

  if length - index < 30 && index != length
    reduced_str = reduced_str[0...index]
  end

  reduced_str.rstrip + '...'
end

str = 'Fact Sheet #35 - CollectibilityofMajapitalImprovementand/orOwnerInd (OI) Rent Increases Where the Rent is'

p reduce_string(str, 70)
