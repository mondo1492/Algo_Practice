def merge_arrays(my_array, alice_arry)
  new_arr = []
  until my_array.empty? || alice_arry.empty?
    if my_array[0] < alice_arry[0]
      new_arr.push(my_array[0])
      my_array.shift
    else
      new_arr.push(alice_arry[0])
      alice_arry.shift
    end
  end
  if my_array.empty?
    new_arr.concat(alice_arry)
  else
    new_arr.concat(my_array)
  end

end
arr1 = [1, 3, 4, 6, 7, 19, 100]
arr2 = [1,2, 3, 4, 6, 27, 29]

p merge_arrays(arr1, arr2)
