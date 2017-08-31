# I like parentheticals (a lot).
# "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
#
# Write a function that, given a sentence like the one above, along with the position of an opening parenthesis, finds the corresponding closing parenthesis.
#
# Example: if the example string above is input with the number 10 (position of the first parenthesis), the output should be 79 (position of the last parenthesis).

def match_parens(str, n)
  hash = Hash.new
  un_matched_parens = []
  str.chars.each_with_index do |char, idx|
    if char == '('
      hash[idx] = nil
      un_matched_parens.push(idx)
    elsif char == ')'
      hash[un_matched_parens.pop] = idx
    end
  end
  hash[n]
end

def match_parens2(str, n)
  current_pos = n
  count = 0
  while current_pos <= str.length
    count += 1 if str[current_pos] == '('
    return current_pos if str[current_pos] == ')' && count == 1
    count -= 1 if str[current_pos] == ')'
    current_pos += 1
  end
end

sen = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
p match_parens(sen, 10)
p match_parens2(sen, 10)
