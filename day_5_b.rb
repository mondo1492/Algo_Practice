

def in_place_shuffle(arr)

  idx = 0
  while idx < arr.length 
    val = rand(0...arr.length)
    arr[idx], arr[val] = arr[val], arr[idx]
    idx += 1
  end
  arr
end

arr = [1, 6, 2, 19, 12, 18, 25]

p in_place_shuffle(arr)
p in_place_shuffle(arr)
p in_place_shuffle(arr)
p in_place_shuffle(arr)
