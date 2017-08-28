# practice problems

spy = [10, 7, 4, 8, 11, 9]



def get_max_profit_on(spy)
  min = spy[0]
  max_profit = 0
  spy[1..-1].each do |price|
    if price < min
      min = price
    else
      max_profit = price - min if price - min > max_profit
    end
  end
  p max_profit
end

get_max_profit_on(spy)




def get_max_profit_on2(spy)
  max_profit = 0
  spy.each_with_index do |price1, idx|
    spy[idx + 1..-1].each do |price2|
      max_profit = price2 - price1 if price2 - price1 > max_profit
    end
  end
  p max_profit

end

get_max_profit_on2(spy)
