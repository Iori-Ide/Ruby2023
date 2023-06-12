require "socket"

port = 80
s=TCPSocket.open("www.is.kyusan-u.ac.jp",port)
s.puts("GET /~toshi/ HTTP/1.0")
s.puts
while line=s.gets
    line.chomp!
    break if line == ""
    #line.chomp!
    puts line
end

s.close