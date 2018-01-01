require("minitest/autorun")
require ("minitest/rg")
require_relative("../models/dice.rb")


class DiceTest < MiniTest::Test

  def setup
    @dice1 = Dice.new(1,true)
    @dice2 = Dice.new()
  end

  def test_dice_has_value
    expected = 1
    actual = @dice1.value()
    assert_equal(expected, actual)
  end

  def test_dice_defaults_to_0
    expected = 0
    actual = @dice2.value()
    assert_equal(expected, actual)
  end

  def test_dice_hold_true
    expected = true
    actual = @dice1.hold()
    assert_equal(expected, actual)
  end

  def test_dice_hold_false
    expected = false
    actual = @dice2.hold()
    assert_equal(expected, actual)
  end

end
