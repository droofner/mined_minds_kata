





# def grand_bash(winning_numbers,my_number)
# winning_numbers.include?(my_number)
# end
  # winning_numbers = ["1111","2222","3333","4444","5555","6666","7777","8888","9999","1010"]
#   my_number = 1111

# def grand_bash(winning_numbers,my_number)
# 	winning_numbers = ["1111","2222","3333","4444","5555","6666","7777","8888","9999","1010"]
#    	my_number = 1111
 	 # winning_numbers.each_with_index do |value,index| 
 	 # 	if value -1 == 0 or if value +1 == 0
 	 # 	no_cigar[][index] == true
 		# elsif value == 1111
 		# 	my_number [1111] == true
 		# end
# end
def close_but_no_cigar
	winning_number = ["1111","2222","3333","4444","5555","6666","7777","8888","9999","1010"]
	my_ticket = "2220"
	winning_number_each do |winning_number|
		counter = 0
		i=0
		4.times do
			if winning_number[i] = my_ticket[i]
				counter += 1
			end
			i +=1
		end
		if counter == 3
			puts "true"
		else 
			puts "false"
		end
end
end
close_but_no_cigar	
