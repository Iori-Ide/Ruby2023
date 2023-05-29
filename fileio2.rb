#キーボードから
print "name?"
name = gets
#name.txt というファイルに変数 name の値を保存

file = File.open "name.txt", "w"
file.puts name
file.close
