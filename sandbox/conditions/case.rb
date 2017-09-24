x = true

puts case x
  when Numeric
    "Numeric"
  when String then "String"
  when TrueClass, FalseClass; "Boolean"
  else "Another data type"
end
