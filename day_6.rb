#Find a duplicate, Space Edition

#integers are in range 1..n

# Array has a length of n+1]

# 1 2 4 4 4
#

def optimize_for_space(arr)
  arr[0...-1].each_with_index do |el, idx|
    arr[idx + 1..-1].each do |el2|
      return el if el == el2
    end
  end
  "No Duplicates"
end

def optimize_for_space2(arr)
  len = arr.length
  pivot = arr.length / 2

end



p optimize_for_space([1, 2, 3, 1, 4])
p optimize_for_space([1, 2, 4, 4, 4])
p optimize_for_space([4, 5, 6, 6, 1, 2])

#1 1 1 2 3 4 4 5 6 ....


def find_repeat(the_array)
    floor = 1
    ceiling = the_array.length - 1

    while floor < ceiling

        # divide our range 1..n into an upper range and lower range
        # (such that they don't overlap)
        # lower range is floor..midpoint
        # upper range is midpoint+1..ceiling
        midpoint = floor + ((ceiling - floor) / 2)
        lower_range_floor, lower_range_ceiling = floor, midpoint
        upper_range_floor, upper_range_ceiling = midpoint+1, ceiling

        # count number of items in lower range
        items_in_lower_range = 0
        the_array.each do |item|
            # is it in the lower range?
            if item >= lower_range_floor and item <= lower_range_ceiling
                items_in_lower_range += 1
            end
        end

        distinct_possible_integers_in_lower_range = \
            lower_range_ceiling - lower_range_floor + 1

        if items_in_lower_range > distinct_possible_integers_in_lower_range
            # there must be a duplicate in the lower range
            # so use the same approach iteratively on that range
            floor, ceiling = lower_range_floor, lower_range_ceiling
        else
            # there must be a duplicate in the upper range
            # so use the same approach iteratively on that range
            floor, ceiling = upper_range_floor, upper_range_ceiling
        end
    end

    # floor and ceiling have converged
    # we found a number that repeats!
    return floor
end
