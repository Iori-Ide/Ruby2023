# コマンドライン引数の表示
#msg = ARGV
#len = msg.length
#len.times do |i|
#    print msg[i] + " "
#end
#puts

msg=""
i=0
while i<ARGV.length
    msg += ARGV[i] + " "
    i+=1
end
puts msg


