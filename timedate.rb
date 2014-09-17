require 'time'
require 'date'

# (1)
def jparsedate1st(time)
  time.strftime("%Y年%m月%d日%p%I時%M分%S秒").gsub(/(AM|PM)/, "AM" => "午前", "PM" => "午後")
end

def jparsedate(str)
  ary = str.split(/\D+/)
  year = ary[0]
  month = ary[1]
  day = ary[2]
  if str =~ /午後|pm/i
    hour = ary[3].to_i + 12
  else
    hour = ary[3]
  end
  min = ary[4]
  sec = ary[5]
  Time.mktime(year, month, day, hour, min, sec)
end
# p jparsedate2nd("2013年5月30日午後8時17分50秒")


# (2)
def ls_t(path)
  ary = []
  returnStr = ''
  Dir.open(path) do |dir|
    dir.each do |name|
      if FileTest.file?(name)
        ary << name
      end
    end
  end
  ary.sort_by!{|item| File.ctime(item)}.each do |str|
    returnStr << "#{ary.index(str)+1}番目: #{str}\n"
  end
  returnStr
end
# puts ls_t("./")


# (3) http://ktaobo.blogspot.jp/2012/12/ruby-cal.html
class Calender
  def initialize(year=Date.today.year, month=Date.today.month)
    @firstDay = Date.new(year, month, 1)
    @lastDay = Date.new(year, month, -1).day
    @wday = @firstDay.wday
    @weeks = (@wday + @lastDay + 6) / 7
  end

  def calAry
    calAry = (0...@weeks).map do |i|
      day = i * 7 - @wday + 1
      if day <= 0
        [nil] * @wday + (1..7 - @wday).to_a
      elsif day + 7 > @lastDay
        (day..@lastDay).to_a
      else
        (day..day + 6).to_a
      end
    end
  end

  def putCal
    header = @firstDay.strftime('%b') + "\s" + @firstDay.strftime('%Y')
    puts header.center(21)
    puts "Su Mo Tu We Th Fr St"
    calAry.each do |week|
      puts week.map {|d| d ? sprintf('%2d', d) : '  '}.join(' ')
    end
  end
end
# foo = Calender.new
# foo.putCal



