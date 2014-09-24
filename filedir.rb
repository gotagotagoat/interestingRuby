# (1)
def print_libraries
  str = ''
  $:.each do |i|
    str << i + "\n"
  end
  return str
end
# puts print_libraries


# (2)
def du(path)
  byteSize = 0
  Dir.glob(path<<("**/*")) do |name|
    byteSize += File.size(name)
  end
  byteSize
end
# puts du("./")
