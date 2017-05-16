require "minitest/autorun"
require_relative "raffle.rb"


class TestRaffle < Minitest::Test
	
	def test_1_returns_1
		assert_equal(1,1)
	end

	def test_winners_includes_my_ticket
		winners = [1234, 1235, 2234, 2235]
		assert_equal(true,raffle(winners,1234))
	end
end	