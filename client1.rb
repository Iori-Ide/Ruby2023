require "socket"

port = 80
s=TCPSocket.open("www.is.kyusan-u.ac.jp",port)
s.puts("GET /~toshi/")
while line=s.gets
    puts line
end
s.close