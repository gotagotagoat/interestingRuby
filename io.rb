# (1)
file = File.read('twinkle.txt')

# (a) 行数を数える
file.each_line do |line|
  # printf("%3d %s", file.lineno, line)
end

# (b) 単語数を数える
ary = file.split(/\s+/)
# p ary.size

# (c) 文字数を数える
ary = []
file.each_char { |ch| ary << ch }
# p ary.size


# (2)
file = File.read('twinkle.txt')

# (a) 行を逆順に並べ替える
file2 = file.dup
ary = []
file2.each_line { |line| ary << line }
# puts ary.reverse

# (b) 最初の一行だけを残して残りを削除
file2 = file.dup
ary = []
file2.each_line { |line| ary << line }
ary.delete_at(0)
# p ary

# (c) 最後の一行だけを残して残りを削除
file2 = file.dup
ary = []
file2.each_line do |line|
  ary << line
end
ary.delete_at(-1)
# p ary


# (3)
def tail(lineNum, fileName)
  ary = []
  File.read(fileName).each_line { |line| ary << line }
  return ary[-lineNum..-1]
end
puts tail(3, 'twinkle.txt')

def tailKai(lineNum, fileName)
  File.open(fileName) do |io|
    io.seek(lineNum, IO::SEEK_SET)
    return io
  end
end
# puts tail(3, 'twinkle.txt')