require "minitest/autorun"
require_relative "array.rb"

class Test_array < Minitest::Test
	def test_1_returns_Array
		minedminds_array = create_minedminds_array
	assert_equal(100, minedminds_array.length)
	end
end