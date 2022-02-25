def stock_picker(array)

  dif_array = []

  min_profit = 0
  min_buy_index = 0
  min_sell_index = 0

  for i in (0..array.size-2)
    buy = array[i]
    profit_array = []

    for j in (i+1..array.size-1)
      profit = buy - array[j]
      profit_array << profit
      if profit < min_profit
        min_profit = profit
        min_buy_index = i
        min_sell_index = j
      end
    end

    dif_array << profit_array

  end

 [min_buy_index, min_sell_index]
end


stock_picker([17,3,6,9,15,8,6,1,10])
