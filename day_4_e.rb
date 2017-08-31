def perm_palindrone(str)
  hash = Hash.new(0)
  sum = 0
  str.chars.each do |let|
    hash[let] = (hash[let] + 1) % 2
  end
  hash.each do |_, val|
    sum += val
  end
  sum <= 1 ? true : false
end

p perm_palindrone("civic")
p perm_palindrone("ivicc")
p perm_palindrone("civil")
p perm_palindrone("livci")





# abcde
# acdeb
# abedc
# aedcb
# bcdea
