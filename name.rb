#name? と表示
#変数に名前を入力
#こんにちは、〇〇という形式で表示
puts "name?"
n=gets
#n=n.chomp
puts "こんにちは、"+n
#number?と表示
#変数にキーボードから数値を入力
#入力された値+1を画面に表示
puts "number?"
i=gets
i=i.to_i
puts i+1
