# To match any digit, you can do this:
/[0-9]/

# You can also accomplish the same thing more concisely with the special escape
# sequence \d:
/\d/

# Examples:
'str228' =~ /\d/     #=> 3
'str228'.match(/\d/) #=> #<MatchData "2">

# Notice that there are no square brackets here; it’s just \d. Two other useful
# escape sequences for predefined character classes are these:
  # 1) \w matches any digit, alphabetical character, or underscore (_).
  # 2) \s matches any whitespace character (space, tab, newline).

# Examples:
'str_228'.match(/\w/)            #=> #<MatchData "s">
'str228'.match(/\w/)             #=> #<MatchData "s">
'228'.match(/\w/)                #=> #<MatchData "2">
'moneycat$228'.match(/[^\w]/)    #=> #<MatchData "$">

'My Name Is Michael'.match(/\s/) #=> #<MatchData " ">
'My
Name Is Michael'.match(/\s/)     #=> #<MatchData "\n">

# Each of these predefined character classes also has a negated form.
# You can match any character that isn’t a digit by doing this:
/\D/

# Examples:
'324242f32'.match(/\D/)         #=> #<MatchData "f">
'moneycat$228'.match(/\W/)      #=> #<MatchData "$">
