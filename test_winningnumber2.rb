require "minitest/autorun"
require_relative "winningnumbers2.rb"


class TestWinningNumbers < Minitest::Test
	
	def test_1_returns_1
		assert_equal(1,1)
	end

	def test_6_exists_in_array_TRUE
		numbers = [0,2,4,6,8]
		assert_equal(true,win_lottery(numbers,6))
	end

	def test_5_exists_in_array_FALSE
		numbers = [0,2,4,6,8]
		assert_equal(false,win_lottery(numbers,5))
	end
	
	def test_7_exists_in_array_FALSE
		numbers = [0,2,4,6,8,10,12,14,16,18]
		assert_equal(false,win_lottery(numbers,7))
	end

	def test_8_exists_in_array_FALSE
		numbers = [0,2,4,6,8,10,12,14,16,18]
		assert_equal(true,win_lottery(numbers,8))
	end

	def test_single_digit_array_TRUE
		numbers = [3]
		assert_equal(true,win_lottery(numbers,3))
	end

	def test_empty_array_FALSE
		numbers = []
		assert_equal(false,win_lottery(numbers,10))
	end

	def test_text_array_TRUE
		numbers = ["Pens","Pirates","Steelers"]
		assert_equal(true,win_lottery(numbers,"Pens"))
	end

	def test_text_array_FALSE
		numbers = ["Pens","Pirates","Highlanders"]
		assert_equal(false,win_lottery(numbers,"Steelers"))
	end

	def test_text_array_FALSE
		numbers = ["Pens","Pirates","Highlanders"]
		assert_equal(false,win_lottery(numbers,"pirates"))
	end
end	