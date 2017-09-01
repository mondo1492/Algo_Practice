def word_cloud(str)
  hash = Hash.new(0)
  new_word = ''
  punctuation = [',','?','.','?','!']
  str.chars.each do |ch|
    if punctuation.include?(ch) || ch == ' '
      hash[new_word] += 1 unless new_word == ''
      new_word = ''
    else
      if new_word == ''
        new_word += ch.downcase
      else
        new_word += ch
      end
    end
  end
  hash
end


str = "sometimes i code for fun, sometimes i code because i have to, sometimes it is too hot to code, nonetheless, Code!, Code!, Code!"
p word_cloud(str)
