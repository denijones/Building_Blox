def stock_picker(stock_prices)

  best = 0
  best_sell = 0
  best_buy = 0

  for i in 0..(stock_prices.size-1)
    for j in (i+1)..(stock_prices.size-1)

      profit = stock_prices[j]-stock_prices[i]

      if profit > best
        best = profit
        best_sell = j
        best_buy = i
      end

    end
  end

  return [best_buy,best_sell]
end

prices = [17,3,6,9,15,8,6,1,10]

puts stock_picker(prices)
