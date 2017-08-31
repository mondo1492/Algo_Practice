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


def reverse_word_in_place(sentence)
  sentence_arr = sentence.split
  len = sentence_arr.length
  current_pos = 0
  while current_pos <= len / 2
    sentence_arr[current_pos], sentence_arr[len - current_pos] = sentence_arr[len - current_pos], sentence_arr[current_pos]
    current_pos += 1
  end
  sentence_arr.join(' ')[1..-1]
end


p reverse_word_in_place('hi my name is aaron')


def reverse_string_in_place_helper(str, start_idx, end_idx)
  len = end_idx - start_idx
  # current_pos = start_idx
  while start_idx < end_idx
    str[start_idx], str[end_idx] = str[end_idx], str[start_idx]
    start_idx += 1
    end_idx -= 1
  end
  str
end


def reverse_string_in_place2(str)
  # str = reverse_string_in_place(str)
  #
  # current_start_idx = 0
  #
  # i = 0
  #
  # while i <= str.length
  #   if str[i] == ' ' || i == str.length
  #     str[current_start_idx...i] =
  #     reverse_string_in_place_helper(str, current_start_idx, i - 1)[current_start_idx...i]
  #
  #     current_start_idx = i + 1
  #   end
  #   i += 1
  # end

  str = reverse_string_in_place(str)
  initial_idx = 0
  current_pos = 0
  while current_pos <= str.length
    if str[current_pos] == ' ' || current_pos == str.length
      end_idx = current_pos
      str = reverse_string_in_place_helper(str, initial_idx, end_idx - 1)

      initial_idx = current_pos + 1
      current_pos += 1
    end
    current_pos += 1
  end
  str
end

p reverse_string_in_place2('hi my name is aaron')
