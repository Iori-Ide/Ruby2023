require "socket"

def server s
    cmd, path, ver =s.gets.chomp.split(" ")
    if path == "/now"
        puts  Time.now
        s.puts Time.now
    elsif path == "/hello"
        puts "hello world!"
        s.puts "hello world!"
        s.puts "Content-Type: text/html";
        s.puts
        s.puts "<DOCTYPE>"
        s.puts "<html><body><h1>Hello World!</h1></body></html>"
    elsif path == "/"
        while line=s.gets
            puts line
            s.puts line
            break if line == ""
        end
    else 
        s.puts "HTTP1.0/ 404:Not Found"
    end
   #while line.s.gets

        #line.chomp!
        
        # cmd = line.split(" ")
        # page = cmd[1].split("/")
        # #puts cmd[1]
        # case page[2]
        # when nil then
        #     puts line
        #     s.puts line
        # break if line == ""
        # when "now" then
        #     time = Time.now
        #     s.puts time
        # when "hello" then
        #     s.puts "hello"
        # else
        #     s.puts "404 Not Found"
        # end
        # # puts line
        # # s.puts line
        # # break if line == ""
    s.close
end

gs = TCPServer.open 80

while true
    s = gs.accept
    Thread.new do
        server s
    end
end