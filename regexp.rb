# (1)
def getEMAddress(str)
  str =~ /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  localPart = $1
  domainName = $2
  return "Local part is '#{localPart}'. Domain name is '#{domainName}'"
end
# p getEMAddress("info@example.com")


# (2)
str = "正規表現は難しい！ なんて難しいんだ！"
# p str.gsub(/難しいんだ/, "簡単なんだ").gsub(/難しい/, "簡単だ")


# (3)
def word_capitalize(str)
  newAry = []
  ary = str.split(/\-/)
  ary.each do |w|
    newAry << w.capitalize
  end
  return newAry.join('-')
end
# p word_capitalize("in-reply-to")
# p word_capitalize("X-MAILER")