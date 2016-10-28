def stock_picker(stock_array)


stock_hash={}

stock_array.size.times do |i|
	stock_hash.store(i,stock_array[i])
	
	
end

#our first hash has the key as the date, and the value as the price

highest_profit=0
highest_profit_sell_day=0
highest_profit_buy_day=0

#iterator
stock_hash.size.times do |i|
	
	cost_array=stock_hash.values_at(i)
	cost=cost_array[0]
	
#so we select all of the hashes that make a profit
	possible_profit_hash=stock_hash.select{|k,v| ((k>i)&&(v>stock_array[i]))}
	
	#then we do what, idk. We make a hash that has days as key, price as values
	#then we can find out which one has the best profit. These are all tied to a particular day to buy, i
	
	buy_day=i
	sell_price=0
	sell_day=0
	
	possible_profit_hash.each do |k,v|
		
		if (v>sell_price)
			sell_price=v.to_f
			sell_day=k
		end
	end
	
	profit=sell_price-cost
	
	#At the end we need to store the 3 values. We could do an array, but that would feel weird
	#So we make a hash, with the key being the buy date, and have the value be the array with sell date and profit
	
	if (profit>highest_profit)
		highest_profit=profit
		highest_profit_sell_day=sell_day
		highest_profit_buy_day=buy_day
	end
	
	


end

profit_days_array=[highest_profit_buy_day,highest_profit_sell_day]
profit_days_array

end