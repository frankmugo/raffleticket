require "minitest/autorun"
require_relative "inclass_winningnumbers.rb"


class TestRaffle < Minitest::Test
	
	def test_1_returns_1
		assert_equal(1,1)
	end

	def test_assert_true
		my_ticket = 5235
		winners = [5235]
		assert_equal(true,raffle(winners,my_ticket))
	end

	def test_assert_false
		my_ticket = 5235
		winners = [1234,2345,3456,4567,15235]
		assert_equal(false,raffle(winners,my_ticket))
	end

	def test_assert_unknown
		my_ticket = 1234
		winners = [0123,1235,3345]
		assert_equal(false,raffle(winners,my_ticket))
	end

	def test_assert_leading_zero
		my_ticket = 0234
		winners = [0123,1235,3345,0234]
		assert_equal(true,raffle(winners,my_ticket))
	end

	def test_assert_leading_zero_iterate
		my_ticket = 0234
		winners = [0123,1235,3345,0234]
		assert_equal(true,raffle_iterate(winners,my_ticket))
	end

	def test_assert_false
		my_ticket = 5235
		winners = [1234,2345,3456,4567,15235]
		assert_equal(false,raffle_iterate(winners,my_ticket))
	end

	def test_assert_unknown
		my_ticket = 1234
		winners = [0123,1235,3345]
		assert_equal(false,raffle_iterate(winners,my_ticket))
	end


end	
