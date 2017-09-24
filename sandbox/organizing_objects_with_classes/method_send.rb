print "Information desired: "
request = gets.chomp

ticket = Object.new

def ticket.apple
  'apple'
end

def ticket.vidroid
  'vidroid'
end

if ticket.respond_to? request
  puts ticket.send request
  # puts ticket.__send__ request     # eql to 'send'
  # puts ticket.public_send request  # only for public methods
else
  puts 'No such informatin available'
end
