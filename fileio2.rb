#キーボードから
print "name?"
name = gets
#name.txt というファイルに変数 name の値を保存

File.open "name.txt", "w" do |file|
    file.puts name
end
