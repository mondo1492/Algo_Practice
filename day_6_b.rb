def find_duplicate(int_array)

   n = int_array.length - 1

   # STEP 1: GET INSIDE A CYCLE
   # start at position n+1 and walk n steps to
   # find a position guaranteed to be in a cycle
   position_in_cycle = n + 1
   n.times do
       position_in_cycle = int_array[position_in_cycle - 1]
       # we subtract 1 from the current position to step ahead:
       # the 2nd *position* in an array is *index* 1
   end

   # STEP 2: FIND THE LENGTH OF THE CYCLE
   # find the length of the cycle by remembering a position in the cycle
   # and counting the steps it takes to get back to that position
   remembered_position_in_cycle = position_in_cycle
   current_position_in_cycle    = int_array[position_in_cycle - 1] # 1 step ahead
   cycle_step_count = 1

   while current_position_in_cycle != remembered_position_in_cycle
       current_position_in_cycle = int_array[current_position_in_cycle - 1]
       cycle_step_count += 1
   end

   # STEP 3: FIND THE FIRST NODE OF THE CYCLE
   # start two pointers
   #   (1) at position n+1
   #   (2) ahead of position n+1 as many steps as the cycle's length
   pointer_start = n + 1
   pointer_ahead = n + 1
   cycle_step_count.times do
       pointer_ahead = int_array[pointer_ahead - 1]
   end

   # advance until the pointers are in the same position
   # which is the first node in the cycle
   while pointer_start != pointer_ahead
       pointer_start = int_array[pointer_start - 1]
       pointer_ahead = int_array[pointer_ahead - 1]
   end

   # since there are multiple values pointing to the first node
   # in the cycle, its position is a duplicate in our array
   return pointer_start
end
