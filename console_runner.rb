require_relative("./models/die.rb")

  @die1 = Die.new()
  @die2 = Die.new()
  @die3 = Die.new()
  @die4 = Die.new()
  @die5 = Die.new()
  @die1.roll_die()
  @die2.roll_die()
  @die3.roll_die()
  @die4.roll_die()
  @die5.roll_die()
  p "Welcome to the Yahtzee dice simulator"
  p "Your dice numbers are:"
  p @die1.value()
  p @die2.value()
  p @die3.value()
  p @die4.value()
  p @die5.value()
