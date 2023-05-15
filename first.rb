puts ("Hello")
puts "ksu"
# put string

i=9
s="ksu"
puts s + i.to_s

j=2.0

puts i+j
puts i-j
puts i*j
puts i/j
puts i%j

if i%2 == 0
    puts "even"
else
    puts "odd"
end

if i%3 == 0
    puts "0"
elsif i%3==1
    puts "1"
else
    puts "2"
end

i=3
while i>0
    print "#"
    i-=1
end
puts

ia = [1, 5, 10]
puts ia[0]
sa = ["a", "b"]
puts sa[1]
xa = [1, "a", 10, [5,3]]
puts xa[2]
puts xa[3][0]

l=0
while l<ia.length
    print ia[l]
    l+=1
end
puts
xa.each do |i|
    print i
    print ","
end
puts

5.times do
    print "*"
end
puts

s=gets
s=schomp
#s.chomp!
puts "##"+s+"**"
p s
p 1
p "1"