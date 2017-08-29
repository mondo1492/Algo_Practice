# practice problems

spy = [10, 7, 4, 8, 11, 9]



def get_max_profit_on(spy)
  min = spy[0]
  max_profit = 0
  spy[1..-1].each do |price|
    if price < min
      min = price
    else
      max_profit = price - min if price - min > max_profit
    end
  end
  p max_profit
end

get_max_profit_on(spy)




def get_max_profit_on2(spy)
  max_profit = 0
  spy.each_with_index do |price1, idx|
    spy[idx + 1..-1].each do |price2|
      max_profit = price2 - price1 if price2 - price1 > max_profit
    end
  end
  p max_profit

end

get_max_profit_on2(spy)


arr1 = [1, 7, 3, 4]

def get_products_of_all_ints_except_at_index(arr1)
  result_arr = []
  arr1.each_index do |idx|
    product = 1
    arr1.each_with_index do |el, idx2|
      product *= el unless idx == idx2
    end
    result_arr.push(product)
  end
  p result_arr
end
get_products_of_all_ints_except_at_index(arr1)

arr2 = [-10, -10, 1, 200, 300]

def array_of_int(arr2)
  arr2.sort!
  len = arr2.length
  max_product = 1
  if arr2[1] < 0
    if arr2[0] * arr2[1] > arr2[len - 2] * arr2[len - 3]
      max_product = arr2[0] * arr2[1] * arr2[len - 1]
    else
      max_product = arr2[len - 1] * arr2[len - 2] * arr2[len - 3]
    end
  else
    max_product = arr2[len - 1] * arr2[len - 2] * arr2[len - 3]
  end
  p max_product
end

array_of_int(arr2)

arr3 = [-10, -10, 1, 200, 300]
def array_of_int2(arr2)
  lowest_2 = []
  highest_3 = []
  max_product = 1
  arr2.each do |el|
    if highest_3.length < 3
      highest_3.push(el)

    elsif el > highest_3.min
      highest_3.delete(highest_3.min)
      highest_3.push(el)
    end
    if lowest_2.length < 2
      lowest_2.push(el)
    elsif el < lowest_2.max
      lowest_2.delete(lowest_2.max)
      lowest_2.push(el)
    end
  end
  highest_3_without_max = highest_3.reject { |el| el == highest_3.max }
  if lowest_2[0] * lowest_2[1] > highest_3_without_max[0] * highest_3_without_max[1]
    max_product = lowest_2[0] * lowest_2[1] * highest_3.max
  else
    max_product = highest_3.reduce(:*)
  end
  p max_product
end

array_of_int2(arr3)

arr_merge = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]

def merge_ranges(arr)
  arr.sort_by! { |pair| pair[0] }
  checking_pair = arr[0]
  result_arr = []
  arr[1..-1].each do |pair|
    if checking_pair[1] >= pair[0]
      checking_pair = [checking_pair[0], [pair[1], checking_pair[1]].max]
    else
      result_arr.push(checking_pair)
      checking_pair = pair
    end
  end
  result_arr.push(checking_pair)
  p result_arr
end

merge_ranges(arr_merge)
