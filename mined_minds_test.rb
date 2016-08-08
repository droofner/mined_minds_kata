require "minitest/autorun"
require_relative "mined_minds_number.rb"

class Test_mined_minds < Minitest::Test
 
  def test_1_returns_1
  	assert_equal(1,mined_minds(1))
  end

  def test_2_returns_2
  	assert_equal(2,mined_minds(2))
  end

  def test_3_returns_mined
  	assert_equal("mined", mined_minds(3))
  end

  def test_4_returns_minds
  	assert_equal("minds", mined_minds(5))
  end

  def test_5_returns_mined_minds
  	assert_equal("minedminds", mined_minds(15))
  end
end

