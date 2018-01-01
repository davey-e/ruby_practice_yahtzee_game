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

  def test_dont_roll_dice_if_held
    expected = 1
    actual = @dice1.roll_dice()
    assert_equal(expected, actual)
  end

  def test_roll_dice_if_not_held
    expected = true
    dice_value = @dice2.roll_dice()
    actual = true if dice_value.between?(1,6)
    assert_equal(expected, actual)
  end


end
