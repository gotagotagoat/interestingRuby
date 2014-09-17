# (1)
str = "Ruby is an object oriented programming language"
ary = str.split(/ /)
# p ary

# (2)
str = "Ruby is an object oriented programming language"
ary = str.split(/ /)
# p ary.sort


# (3)
str = "Ruby is an object oriented programming language"
ary = str.downcase.split(/ /)
# p ary.sort


# (4)
str = "Ruby is an object oriented programming language"
newStr = ""
str.gsub(/\s/, "\n").each_line do |line|
  newStr << line.capitalize
end
# p newStr.gsub(/\n/, "\s")


# (5)
class String
  def cntString(word)
    ary = self.split('')
    cnt = ary.count("#{word}")
    puts "'#{word}': " + "*" * cnt
  end
end
# str = "Ruby is an object oriented programming language"
# str.cntString(' ')
# str.cntString('R')

class String
  def cntStringKai
    alpha = "abcdefghijklmnopqrstuvwxyz "
    alphaAry = alpha.split('')
    alphaCapAry = alpha.strip.upcase.split('')
    ary = self.split('')
    alphaCapAry.size.times do |i|
      cnt = ary.count("#{alphaCapAry[i]}")
      puts "'#{alphaCapAry[i]}': " + "*" * cnt if cnt >= 1
    end
    alphaAry.size.times do |i|
      cnt = ary.count("#{alphaAry[i]}")
      puts "'#{alphaAry[i]}': " + '*' * cnt if cnt >= 1
    end
  end
end
# str.cntStringKai


# (6)
# むりぽ