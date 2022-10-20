def stock_picker(stocks)
  profit, buy, sell = 0, 0, 0
  stocks.each_with_index do |stock_x, index_x|
    stocks.each_with_index do |stock_y, index_y|
      if stock_y - stock_x > profit && index_y > index_x
        buy, sell, profit = index_x, index_y, stock_y - stock_x
      end
    end
  end
  [buy, sell, profit]
end
  
p stock_picker([17,3,6,9,15,8,6,1,10])