array = %w{ catze dog rabbit }
e = array.map
p e.each {|n| n.upcase } #=> ["CATZE", "DOG", "RABBIT"]
