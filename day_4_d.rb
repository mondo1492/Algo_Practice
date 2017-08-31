def bbp_validator(str)
  # openers = '{(['
  # closers = '})]'
  # open_count_a = 0
  # open_count_b = 0
  # open_count_c = 0
  # str.chars.each do |char|
  #   if openers.include?(char)
  #     open_count_a += 1 if char == '{'
  #     open_count_b += 1 if char == '('
  #     open_count_c += 1 if char == '['
  #   elsif closers.include?(char)
  #     open_count_a -= 1 if char == '}'
  #     open_count_b -= 1 if char == ')'
  #     open_count_c -= 1 if char == ']'
  #   end
  # end
  # sum = open_count_a + open_count_b + open_count_c
  # sum == 0 ? true : false
  openers = '{(['
  closers = '})]'
  stack = []
  hash = {
    '}' => '{',
    ']' => '[',
    ')' => '('
  }
  str.chars.each do |char|
    if openers.include?(char)
      stack.push(char)
    elsif closers.include?(char)
      return false if stack.last != hash[char]
      stack.pop
    end
  end
  stack.empty? ? true : false
end


str1 = '{[(SHOULD BE TRUE)]}'
str2 = '{[(SHOULD BE fallse)]'
str3 = '{[SHOULD BE fallse)]'
str4 = '[}SHOULD BE fallse)]'

p bbp_validator(str1)
p bbp_validator(str2)
p bbp_validator(str3)
p bbp_validator(str4)
