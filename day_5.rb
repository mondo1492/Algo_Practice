def sort_scores(unsorted_scores, highest_possible_score)
  hash = Hash.new(0)
  unsorted_scores.each do |score|
    hash[score] += 1
  end
  idx = 0
  sorted_arr = []
  while idx >= highest_possible_score
    if !hash[idx].nil?
      hash[idx].times do
        sorted_arr.push(idx)
      end
    end
    idx += 1
  end
  sorted_arr
end
