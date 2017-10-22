string = 'Michael Pelykh'
puts string.rjust(25)       #=> '           Michael Pelykh'
puts string.rjust(25, '.')  #=> '...........Michael Pelykh'
puts string.rjust(25, '><') #=> '><><><><><>Michael Pelykh'
