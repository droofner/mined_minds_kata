require "minitest/autorun"
require_relative "mined_minds_number.rb"

class Test_mined_minds < Minitest::Test
 
  def test_1_returns_1
  	assert_equal(1,mined_minds(1))
  end

  def test_2_returns_2
  	assert_equal(2,mined_minds(2))
  end
end
