string = 'Michael Pelykh'
puts string.delete('abc')         #=> Mihel Pelykh
puts string.delete('^abc')        #=> ca
puts string.delete('a-z', '^abc') #=> Mca P
