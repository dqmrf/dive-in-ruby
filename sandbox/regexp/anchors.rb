# [1]> Beginning of a line                      - ^
doc = <<-HEREDOC
# def test(x)
#   puts 'HELLo ' + x + '!'
# end

test('Michael')
HEREDOC

p doc.match(/^\s*#/) #=> #<MatchData "#">

# [2]> End of a line                            - $
# [2]> Beginning of string                      - \A
# [2]> End of string                            - \z
# [2]> End of string (except for final newline) - \Z
# [2]> Word boundary                            - \b
