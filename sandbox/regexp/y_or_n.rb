# Each when clause is a call to === : /^y/i === answer, and so forth.
print 'Continue? (y/n) '
answer = gets

case answer
when /^y/i
  puts 'Great!'
when /^n/i
  puts 'Bye!'
else
  puts 'Huh?'
end
