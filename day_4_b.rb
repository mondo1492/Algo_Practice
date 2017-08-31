def reverse_string_in_place(str)
  len = str.length - 1
  current_pos = 0
  while current_pos <= len / 2
    str[current_pos], str[len - current_pos] = str[len - current_pos], str[current_pos]
    current_pos += 1
  end
  str
end

p reverse_string_in_place('abcdefgh')
