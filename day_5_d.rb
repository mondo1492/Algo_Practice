def rand_5
  val = rand(1..7)
  val.between?(1, 5) ? val : rand_5
end

# p rand_5
# p rand_5
# p rand_5
# p rand_5

def rand_7
  val = rand(1..5) * 2 - 1
  val.between?(1, 7) ? val : rand_7
end



p rand_7
p rand_7
p rand_7
p rand_7

def rand_72
  loop do
    roll1 = rand(1..5)
    roll2 = rand(1..5)
    outcome_number = (roll1 - 1) * 5 + (roll2 - 1) + 1

    if outcome_number > 21
      next
    end
    return outcome_number % 7 + 1
  end
end

def broken?(current_floor, secret_highest_floor)
  current_floor > secret_highest_floor
end

def egg_broke?(secret_highest_floor)
  floor = 2
  passes = 0
  while floor <= 100
    passes += 1
    if broken?(floor, secret_highest_floor)
      return broken?(floor - 1, secret_highest_floor) ? floor - 2 : floor - 1
    end
    floor += 2
  end
  100
end

def egg_broke2?(secret_highest_floor)
  floor = 3
  unless broken?(100, secret_highest_floor)
    return 100
  end
  while floor <= 99
    if broken?(floor - 1, secret_highest_floor)
      if broken?(floor - 2, secret_highest_floor)
        return floor - 3
      else
        return floor - 2
      end
    elsif broken?(floor, secret_highest_floor)
      return floor - 1
    end
    floor += 3
  end
  99
end

secret_highest_floor = 5

p egg_broke?(1)
p egg_broke?(2)
p egg_broke?(3)

p egg_broke?(98)
p egg_broke?(99)
p egg_broke?(100)

p egg_broke2?(1)
p egg_broke2?(2)
p egg_broke2?(3)
p egg_broke2?(4)
p egg_broke2?(5)
p egg_broke2?(6)
p egg_broke2?(98)
p egg_broke2?(99)
p egg_broke2?(100)

#decrement one after every 10 like 10..9..8

def egg_broke3?(secret_highest_floor)
  initial_pass = 10
  while !broken?(initial_pass, secret_highest_floor)
    initial_pass += 10
    return 100 if initial_pass == 110
  end
  initial_pass -= 9
  10.times do
    if broken?(initial_pass, secret_highest_floor)
      return initial_pass - 1
    end
    initial_pass += 1
  end
end

p egg_broke3?(1)
p egg_broke3?(2)
p egg_broke3?(3)
p egg_broke3?(4)
p egg_broke3?(5)
p egg_broke3?(6)
p egg_broke3?(7)
p egg_broke3?(8)
p egg_broke3?(9)
p egg_broke3?(10)
p egg_broke3?(11)
p egg_broke3?(98)
p egg_broke3?(99)
p egg_broke3?(100)
