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

arr = [42, 12, 41, 100, 1, 99]
arr2 = [1, 2, 3, 6, 4, 5, 6]

p sort_scores(arr, 100)

require 'set'

def find_double(arr)
  set = Set.new
  arr.each do |el|
    return el unless set.add?(el)
  end
  "No duplicates"
end

p find_double(arr2)

def find_double2(arr)
  real_val = (arr.lastg**2 + arr.last) / 2
  actual_val = arr.reduce(:+)
  real_val == actual_val ? "No duplicates" : actual_val - real_val
end

p find_double2(arr2)
