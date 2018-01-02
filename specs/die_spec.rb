require("minitest/autorun")
require ("minitest/rg")
require_relative("../models/die.rb")


class DieTest < MiniTest::Test

  def setup
    @die1 = Die.new(1,true)
    @die2 = Die.new()
  end

  def test_die_has_value
    expected = 1
    actual = @die1.value()
    assert_equal(expected, actual)
  end

  def test_die_defaults_to_0
    expected = 0
    actual = @die2.value()
    assert_equal(expected, actual)
  end

  def test_die_hold_true
    expected = true
    actual = @die1.hold()
    assert_equal(expected, actual)
  end

  def test_die_hold_false
    expected = false
    actual = @die2.hold()
    assert_equal(expected, actual)
  end

  def test_dont_roll_die_if_held
    expected = 1
    actual = @die1.roll_die()
    assert_equal(expected, actual)
  end

  def test_roll_die_if_not_held
    expected = true
    die_value = @die2.roll_die()
    actual = true if die_value.between?(1,6)
    assert_equal(expected, actual)
  end


end
