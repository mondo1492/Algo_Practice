flight_length =  100
movie_lenghts = [40, 40, 50, 60]

def movies_flight_times(flight_length, movie_lenghts)
  hash = Hash.new(0)
  movie_lenghts.each do |movie_length|
    hash[movie_length] += 1
  end

  hash.keys.each do |key|
    if key != (flight_length / 2)
      return true if hash.key?(flight_length - key)
    elsif key == (flight_length / 2)
      return true if hash[key] > 1
    end
  end
  false
end

puts "should be true : #{movies_flight_times(10, [5,5])}"
puts "should be false : #{movies_flight_times(10, [3,8,8,9])}"
puts "should be true : #{movies_flight_times(10, [1,2,3,4,9])}"
puts "should be false : #{movies_flight_times(10, [5])}"


# 0, 1, 1, 2, 3, 5, 8, 13, 21
def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  return 1 if n == 2
  # return 2 if n == 3
  fib(n - 1) + fib(n - 2)
end

puts fib(8)


#return maximum monetary value that the duffel bag
def max_duffel_bag_value(cake_arrays, weight_capacity)
  value = 0
  remaining_capacity = weight_capacity
  cake_arrays.sort_by! { |arr| arr[1] / arr[0] }
  cake_arrays.reverse!
  cake_arrays.each do |arr|
    number_fit = remaining_capacity / arr[0]

    remaining_capacity -= (number_fit * arr[0])
    value += (number_fit * arr[1])
    # return value if remaining_capacity == 0
  end
  value
end


#unbounded knapsack problem
def max_duffel_bag_value2(cake_arrays, weight_capacity)
  cakes = [[1,1], [2,3], [5, 10]]
  best_value_at_indexes_capacity = [0] * (weight_capacity + 1)

  (0..weight_capacity).each do |current_capacity|
    new_best_value = 0
    cake_arrays.each do |cake_weight, cake_value|
      # check to see if current capacity - cake weight index exists
      # then see how many times that goes in and any remainder, check that index and see what that value is and add that

      # right way
      if cake_weight <= current_capacity
        remaining_capacity = current_capacity - cake_weight
        if best_value_at_indexes_capacity[remaining_capacity] + cake_value > new_best_value
          new_best_value = best_value_at_indexes_capacity[remaining_capacity] + cake_value
        end
      end

      #wrong way
      # if cake_weight <= current_capacity
      #   new_best_value = current_capacity / cake_weight * cake_value if current_capacity / cake_weight * cake_value > new_best_value
      #   remaining_capacity = current_capacity % cake_weight
      #   new_best_value += best_value_at_indexes_capacity[remaining_capacity]
      # end
    end
    best_value_at_indexes_capacity[current_capacity] = new_best_value
  end


  best_value_at_indexes_capacity[weight_capacity]
end



puts "should be 555 : #{max_duffel_bag_value([[7,160], [3, 90], [2, 15]], 20)}"
puts "should be 120 : #{max_duffel_bag_value2([[3,40], [5, 70]], 9)}"
puts "should be 555 : #{max_duffel_bag_value2([[7,160], [3, 90], [2, 15]], 20)}"
