# (1)
def cels2fahr(cels)
  fahr = (9.0 / 5.0) * cels + 32.0
  fahr.to_f
end
# 1.upto(100) do |i|
#   puts cels2fahr(i)
# end


# (2)
def fahr2cels(fahr)
  cels = (5.0 / 9.0) * (fahr - 32.0)
  cels.to_f
end
# puts fahr2cels(32)


# (3)
def dice
  rand(6) + 1
end
# puts dice


# (4)
def dice10
  total = 0
  10.times do
    me = rand(6) + 1
    total += me
  end
  puts total
end
# dice10


# (5) 難しかったため模範解答のまま m(__)m
def prime?(num)
  return false if num < 2
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0
      return false
    end
  end
  return true
end
# puts prime?(4)