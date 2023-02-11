def stock_picker(prices)
    max_diff = 0
    for i in 0..(prices.size - 2)
        for j in (i+1)..(prices.size - 1)
        diff = prices[j] - prices[i]
        if diff > max_diff
            max_diff = diff
            buy_day = i
            sell_day = j 
        end
    end
end
print [buy_day,sell_day]
end
stock_picker([17,3,6,9,15,8,6,1,10])