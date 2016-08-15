require "minitest/autorun"
require_relative "array.rb"

class Test_array < Minitest::Test
	def test_1_returns_Array
		minedminds_array = create_minedminds_array
	    assert_equal(100, minedminds_array.length)
	end
	def test_first_item_is_1
		minedminds_array = create_minedminds_array()
		assert_equal(1, minedminds_array.first)
	end



end
