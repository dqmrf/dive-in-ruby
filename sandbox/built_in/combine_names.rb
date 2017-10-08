def combine_names(first_name, last_name)
  first_name + ' ' + last_name
end

names = ['Misha', 'Pelykh']
puts combine_names(*names)
