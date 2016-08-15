require "minitest/autorun"
require_relative "winning_number.rb"
class Test_array <Minitest::Test 

	# def test_winning_number
	# 	winning_numbers = ["1111","2222","3333","4444","5555","6666","7777","8888","9999","1010"]
	# 	my_number = "1111"
	# 	assert_equal(true, grand_bash(winning_numbers,my_number))
	# end

	# def test_2_winning_number
	# 	winning_numbers = ["1122","2222","3333","4444","5555","6666","7777","8888","9999","1010"]
	# 	my_number = "1111"
	# 	assert_equal(false, grand_bash(winning_numbers,my_number))
	# end

	def test_losing_number
		winning_numbers = ["1111","2222","3333","4444","5555","6666","7777","8888","9999","1010"]
	    my_number = "1111"
		expected = "1112"
		assert_equal(true, grand_bash(winning_numbers,no_cigar))
	end
end










