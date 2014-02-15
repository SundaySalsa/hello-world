# Write a method that takes an array of stock prices (prices on days
# 0, 1, ...), and outputs the most profitable pair of days on which to
# first buy the stock and then sell the stock, e.g.: stock_picker( [ 44,
# 30, 24, 32, 35, 30, 40, 38 ] ) == [ 2, 6 ]

def stock_picker(prices)
highest_difference = 0
buy_day = 0                   
sell_day = 0

(0..((prices.length)-2)).each do |n| #there is no point in buying in the last day
  ((n+1)..(prices.length-1)).each do |i|
    if ((prices[i]-prices[n]) > highest_difference)
      highest_difference = prices[i]-prices[n]
      buy_day = n
      sell_day = i
    end
   end
end
return [buy_day, sell_day] #It will return [0, 0] if the prices are constantly falling
end

#puts stock_picker( [ 44, 30, 24, 32, 35, 30, 40, 38 ] )
