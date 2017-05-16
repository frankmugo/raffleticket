
# Return True or False 
def one_number_off?(my_ticket,winning_tickets)

	counter = 0
	i = 0

	my_ticket.length.times do 
		if winning_tickets[i] == my_ticket[i]
			counter +=1
		end
		i += 1

	end

	counter == my_ticket.length - 1

end

# Return array of one off numbers
def one_off(my_ticket,winning_tickets)

	matches = []
	winning_tickets.each do |winner|
		if one_number_off?(my_ticket,winning_tickets)   #Calls prior function
			matches << winner
		end
	end
	puts matches
end
