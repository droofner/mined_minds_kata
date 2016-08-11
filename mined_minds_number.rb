def mined_minds
	numbers = [*1..100]
    numbers.each_with_index do |value,index|
    	if value % 3 == 0 && value % 5 == 0
    		numbers[index] = "minedminds"
    		elsif value % 3 == 0
    		numbers[index] = "mined"
    		elsif value % 5 == 0
    			numbers[index] = "minds"
    		else
    			index
    	end
end
end    		 	 






# 		[] % 3 == 0
# 	   numbers[] = "mined"
#     end
# # 	elif numbers % 3 == 0 && numbers % 5 == 0
#  	if numbers[4] == 5
#  		 numbers[4] = "minds"
# 	end
# 	if numbers[14] == 15
# 	   numbers [14] = "minedminds"
# 	end	
	# 		"minds"
# 	elsif  numbers % 3 == 0
# 		"mined"
	# else numbers
# 		numbers
# 	end	
# numbers	
# end
