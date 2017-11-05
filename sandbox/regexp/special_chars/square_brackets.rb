# [1]> A character class is an explicit list of characters placed inside the
#      regexp in square brackets:
(/[dr]ejected/).match('ejected')  #=> nil
(/[dr]ejected/).match('rejected') #=> #<MatchData "rejected">
(/[dr]ejected/).match('dejected') #=> #<MatchData "dejected">
(/[dr]ejected/).match('_ejected') #=> nil


# [2]> Inside a character class, you can also insert a range of characters:
'Michael'.match(/[a-z]/)          #=> #<MatchData "i">
'Michael'.match(/[A-z]/)          #=> #<MatchData "M">
'michael'.match(/[a-z]/)          #=> #<MatchData "m">


# [3]> To match a hexadecimal digit, you might use several ranges inside a
#      character class:
'#fcba13'.match(/[A-Fa-f0-9]/)    #=> #<MatchData "f">


# [4]> Sometimes you need to match any character except those on a special list.
#      You may, for example, be looking for the first character in a string that
#      is not a valid hexadecimal digit.
string = 'ABC3934 is a hex number.'
string =~ /[^A-Fa-f0-9]/          #=> 7
string.match(/[^A-Fa-f0-9]/)      #=> #<MatchData " ">
