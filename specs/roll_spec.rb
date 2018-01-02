require("minitest/autorun")
require ("minitest/rg")
require_relative("../models/die.rb")
require_relative("../models/roll.rb")


class RollTest < MiniTest::Test

  def setup
    @die1 = Die.new()
    @die2 = Die.new()
    @die3 = Die.new()
    @die4 = Die.new()
    @die5 = Die.new()
    @roll = Roll.new([@die1, @die2, @die3, @die4, @die5])
  end

  def test_roll_has_dice
    expected = [@die1, @die2, @die3, @die4, @die5]
    actual = @roll.dice()
    assert_equal(expected, actual)
  end

end
