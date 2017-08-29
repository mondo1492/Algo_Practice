#given amount of money
#fiven an array of coin denominations
#computes number of ways to make the amount of money with coins of the available denominations

# [4]
# [1, 2, 3]
#
# go through array of
#
# def find_all_combos(money, denominations)
#   result_arr = []
#   current_sum = 0
#   current_denomination_idx = 0
#   sub_arr = []
#   while current_denomination_idx < denominations.length - 1
#     current_denomination = denominations[current_denomination_idx]
#     unless current_sum >= money
#
#     if current_sum > money
#       current_sum = 0
#       sub_arr = []
#       current_denomination_idx += 1
#     elsif current_sum == money
#     else
#       sub_arr << current_denomination
#     end
#     end
#     current_sum += denomination[0]
#     # 1 1 1 1
#     # 1 1 1 2
#     # 1 1 2 2
#     # 1 2 2
#     # 2 2 2
#     # 3 2
#   end
# end


my_rectangle1 = {
  'left_x' => 5,
  'bottom_y' => 5,
  'width' => 9,
  'height' => 8
}

my_rectangle2 = {
  'left_x' => 3,
  'bottom_y' => 7,
  'width' => 8,
  'height' => 4
}

def find_left(rect1, rect2)
  smallest_x = [rect1['left_x'], rect2['left_x']].min
  biggest_x = [rect1['left_x'] + rect1['width'], rect2['left_x'], rect2['width']].max
  if rect1['left_x'] > smallest_x && rect1['left_x'] < biggest_x
    rect1
  elsif rect2['left_x'] > smallest_x && rect2['left_x'] < biggest_x
    rect2
  else
    false
  end
end

def find_intersections(rect1, rect2)
  rect_3_origin = find_left(rect1, rect2)
  hash = {}
  if rect_3_origin == rect2
    if rect2['bottom_y'] > rect1['bottom_y']
      bottom = rect1['bottom_y']
    else
      bottom = rect2['bottom_y']
    end
    hash = {
      'left_x' => rect2['left_x'],
      'bottom_y' => bottom,
      'width' => rect1['left_x'] + rect1['width'] - rect2['left_x'],
      'height' => rect1['bottom_y'] + rect1['height'] - rect2['bottom_y'],
      "rect" => 2
    }
  elsif rect_3_origin == rect1
    if rect1['bottom_y'] > rect2['bottom_y']
      bottom = rect1['bottom_y']
    else
      bottom = rect2['bottom_y']
    end
    hash = {
      'left_x' => rect1['left_x'],
      'bottom_y' => bottom,
      'width' => rect2['left_x'] + rect2['width'] - rect1['left_x'],
      'height' => rect2['bottom_y'] + rect2['height'] - bottom,
      "rect" => 1
    }
  else
    hash = false
  end
  p hash
end

find_intersections(my_rectangle1, my_rectangle2)


def is_super_balanced?

end
