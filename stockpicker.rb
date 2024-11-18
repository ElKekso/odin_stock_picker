def getDifference(array)
  array[1] - array[0]
end

def stock_picker(prices)
  max_index = prices.length - 1
  combinations = Array.new()

  for i in 0..max_index
    for u in i + 1..max_index
      combinations.push([prices[i], prices[u]])
    end
  end

  highest_margin = combinations.reduce {|total, current| getDifference(current) > getDifference(total) ? current : total}

  [prices.index(highest_margin[0]), prices.index(highest_margin[1])]
end