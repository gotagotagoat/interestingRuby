# (1)
def my_collect(obj, &block)
  ary = []
  obj.each do |i|
    ary << block.call(i)
  end
  ary
end
# ary = my_collect([1, 2, 3, 4, 5]) do |i|
#   i * 2
# end
# p ary


# (2)
to_class = :class.to_proc
# p to_class.call('test')
# p to_class.call(123)
# p to_class.call(2 ** 100)


# (3)
def accumlator
  total = 0
  Proc.new do |i|
    total += i
  end
end
# acc = accumlator
# p acc.call(1)
# p acc.call(2)
# p acc.call(3)
# p acc.call(4)