def sort_scores(unsorted_scores, highest_possible_score)
  hash = Hash.new(0)
  unsorted_scores.each do |score|
    hash[score] += 1
  end
  idx = 0
  sorted_arr = []
  while idx <= highest_possible_score
    if hash[idx] != 0
      hash[idx].times do
        sorted_arr.push(idx)
      end
    end
    idx += 1
  end
  sorted_arr
end

arr = [42,12,41,100,1,99]

p sort_scores(arr, 100)

require 'set'

def find_double(arr)
  set = Set.new
  arr.each do |el|
    if set.add?(el)
    else
      return el
    end
  end
  "No duplicates"
end

p find_double([1,2,3,6,4,5,6])
