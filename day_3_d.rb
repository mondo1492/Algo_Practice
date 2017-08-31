def non_duplicate_bit(arr)
  unique_id_holder = 0
  arr.each do |id|
    unique_id_holder ^= id
  end
  unique_id_holder
end


arr=[1,2,1,2,3,4,3,4,5]
p non_duplicate_bit(arr)
