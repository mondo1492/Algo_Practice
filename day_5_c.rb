def riffle(shuffled_deck, half1, half2)
  stack1 = half1
  stack2 = half2
  shuffled_deck.each do |card|
    if card == stack1.last
      stack1.pop
    elsif card == stack2.last
      stack2.pop
    else
      return "Not a Riffle"
    end
  end
  "Riffle!!!"
end

shuffled_deck = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].reverse
half1 = [1, 3, 5, 7, 9]
half2 = [2, 4, 6, 8, 10]

p riffle(shuffled_deck, half1, half2)
