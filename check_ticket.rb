 def winning_ticket?(our_ticket,winning_tickets)
 		 winning_tickets.include?(our_ticket)
 end

def my_include?(item, array)
	count = 0
	array.each do |element|
		if element == item
			count +=1
		end
	end 
	count > 0
end

def off_by_one?(our_ticket,winning_ticket)
		counter = 0
		i=0
		our_ticket.length.times do
			if winning_ticket[i] == our_ticket[i]
				counter += 1
			end
			i +=1
		end
	 counter == our_ticket.length - 1
	
	end
def winning_tickets_one_off(our_ticket,winning_tickets)
    #take each winning ticket 
    #check if out ticket is one off from winning ticket
    #if one off add to one off winning numbers array

    matches = []
	winning_tickets.each do |winning_ticket|
		if off_by_one?(our_ticket, winning_ticket)
			matches << winning_ticket
		end
	end
	matches

end
 
