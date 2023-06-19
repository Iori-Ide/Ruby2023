require "socket"

disp_head = false
disp_body = true

if ARGV[0] == "-h"
    disp_head = false
    disp_body = true
    ARGV.shift
#elsif ARGV[0] == "-b"
#    disp_body = true
#end


port = 80
host = ARGV[0]
name = ARGV[1]


s=TCPSocket.open(host,port)
s.puts "GET   #{path}  HTTP/1.1"
s.puts "Host: #{host}"
s.puts
#flag=0
#while line=s.gets
#    line.chomp!
#    break if line == ""
#        flag=1
        #line.chomp!
#    end
#    if flag==0
#        next
#    elsif flag == 1
#        s.puts
#    end
#end
#s.close

while line=s.gets
    line.chomp!
puts line if disp_head
    break if line == ""
end

while line=s.gets
    line.chomp!
    puts line if disp_body
end
s.close
#is_body = false
#while line=s.gets
#    line.chomp!
#    puts line if is_body = 
#    is_body = true if line == ""
#        #line.chomp!
#end