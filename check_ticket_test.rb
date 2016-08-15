
require "minitest/autorun"
require_relative "check_ticket.rb"

class TestTicket <Minitest::Test
	def test_a_winning_ticket_returns_true
	#we want a function that takes our ticket as a string
	#it takes the winning ticket as an array of strings
	#it returns a boolean (true if our ticket matches a winning ticket)
	our_ticket = "4567"
	winning_tickets = ["4567"]
	assert_equal(true,winning_ticket?(our_ticket,winning_tickets))
	end
	def test_a_winning_ticket_returns_false
		our_ticket = "4567"
		winning_tickets = ["1234"]
		assert_equal(false,winning_ticket?(our_ticket,winning_tickets))
	end
	def test_a_winning_ticket_out_of_many_returns_true
		our_ticket = "4567"
		winning_tickets = ["1234", "4567", "4646"]
		assert_equal(true,winning_ticket?(our_ticket,winning_tickets))
	end
	def test_a_non_winning_ticket_out_of_many_returns_fasle
		our_ticket = "4567"
		winning_tickets = ["1234", "4667", "4646"]
		assert_equal(false,winning_ticket?(our_ticket,winning_tickets))
	end
end
class TestIfTicketIsOneOff <Minitest::Test
	def test_a_matching_ticket_returns_false
	#we want a function that takes our ticket as a string
	#it takes the winning ticket as an array of strings
	#it returns a boolean (true if our ticket is on digit off)
	#eg "1234"is one digit off from "1274"
	our_ticket = "4567"
	winning_ticket = "4567"
	assert_equal(false,off_by_one?(our_ticket,winning_ticket))
	end

	def test_ticket_off_by_2_numbers_returns_false
		our_ticket = "4567"
		winning_ticket = "4589"
		assert_equal(false,off_by_one?(our_ticket,winning_ticket))
	end
	def test_ticket_off_by_1_number_returns_true
		our_ticket = "4567"
		winning_ticket ="6567"
		assert_equal(true,off_by_one?(our_ticket,winning_ticket))
	end
   def test_five_digit_off_by_one_returns_true
   		our_ticket = "12345"
   		winning_ticket = "12346"
   		assert_equal(true,off_by_one?(our_ticket,winning_ticket))
   	end
end
class TestWinningNumbersThatAreOffBYOne <Minitest::Test
#function takes our number as a string 
#takes all winning numbers as an array of strings
#returns an array of all winning numbers that are off by one digit
	def test_no_winning_tickets_returns_empty_array
		our_ticket = "4567"
		winning_tickets = []
		assert_equal([], winning_tickets_one_off(our_ticket,winning_tickets))
	end

	def test_winning_tickets_returns_empty_array
		our_ticket = "4567"
		winning_tickets = ["0012"]
		assert_equal([], winning_tickets_one_off(our_ticket,winning_tickets))
	end
	def test_winning_ticket_off_one_returns_array_with_winning_ticket
		our_ticket = "4567"
		winning_ticket = ["4568"]
		assert_equal(["4568"], winning_tickets_one_off(our_ticket,winning_ticket))
	end
 	def test_2_winning_ticket_off_one_returns_array_with_winning_ticket
 		our_ticket = "4567"
 		winning_ticket = ["4568","1234","3567"] 
        assert_equal(["4568","3567"], winning_tickets_one_off(our_ticket,winning_ticket))
    end
end
