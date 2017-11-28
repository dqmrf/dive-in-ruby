# [1]> Templates in the Wild
# You can find a classic example of the Template Method pattern in WEBrick, the light-
# weight, all-Ruby library for building TCP/IP servers. A key part of WEBrick is the
# GenericServer class, which implements all of the details of being a network server. Of
# course, GenericServer has no idea what you want to actually accomplish in your server.
# Thus, to use GenericServer , you simply extend it and override the run method:
require 'webrick'

class HelloServer < WEBrick::GenericServer
  def run(socket)
    socket.print('Hello TCP/IP world')
  end
end
