def rand_5
  val = rand(1..7)
  val.between?(1, 5) ? val : rand_5
end

p rand_5
p rand_5
p rand_5
p rand_5
