# (1)
a = []
100.times { |i|
  a << i + 1
}
# p a


#(2)-1
a2 = []
a.each do |i|
  a2 << i * 100
end
# p a2

# (2)-2
a.each_with_index do |value, i|
  a[i] = value * 100
end
# p a


# (3)-1
a = []
100.times { |i|
  a << i + 1
}
a3 = []
a.each do |i|
  a3 << i if i % 3 == 0
end
# p a3

# (3)-2
a.delete_if {|i| i % 3 != 0 }
# p a


# (4)
a = []
100.times { |i|
  a << i + 1
}
a.reverse!
# p a


# (5)
a = []
100.times { |i|
  a << i + 1
}
sum = 0
a.each do |i|
  sum += i
end
# p sum


# (6)
ary = []
100.times { |i|
  ary << i + 1
}
result = Array.new
10.times do |i|
  result << ary[i*10, 10]
end
# p result


# (7)
def sum_array(nums1, nums2)
  result = []
  nums1.zip(nums2) do |a, b|
    result << a + b
  end
  result
end
# p sum_array([1, 2, 3], [4, 6, 8])