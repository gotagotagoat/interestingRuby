# (1)
wday = {:sunday => "日曜日", :monday => "月曜日", :tuesday => "火曜日", :wednesday => "水曜日", :thursday => "木曜日", :friday => "金曜日", :suturday => "土曜日" }
# p wday[:sunday]
# p wday[:monday]
# p wday[:thursday]


# (2)
wday = {:sunday => "日曜日", :monday => "月曜日", :tuesday => "火曜日", :wednesday => "水曜日", :thursday => "木曜日", :friday => "金曜日", :suturday => "土曜日" }
# p wday.size


# (3)
wday = {:sunday => "日曜日", :monday => "月曜日", :tuesday => "火曜日", :wednesday => "水曜日", :thursday => "木曜日", :friday => "金曜日", :suturday => "土曜日" }
# wday.each do |key, value|
#   puts "「#{key}」は#{value}のことです。"
# end


# (4)
def str2hash(str)
  strAry = str.split(/\s+/)
  hash = {}
  strAry.each do |s|
    nextIndex = strAry.index(s) + 1
    hash.store(s, strAry[nextIndex]) if strAry.index(s) % 2 == 0
  end
  return hash
end
# p str2hash("blue 青 white 白\nred 赤")


# 参考URL http://qiita.com/akisute3@github/items/022b0dfcb52a2cf30eca
def str2hash2(str)
  strAry = str.split(/\s+/)
  hash = {}
  strAry.each_slice(2) do |a, b|
    hash.store(a, b)
  end
  return hash
end
# p str2hash2("blue 青 white 白\nred 赤")