def raffle(winners, my_ticket)

	winners.each do |check|
		if winners.include?(my_ticket)
			return true
		end
	end
	false

end