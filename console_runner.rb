require_relative("./models/die.rb")
require_relative("./models/roll.rb")


  @die1 = Die.new()
  @die2 = Die.new()
  @die3 = Die.new()
  @die4 = Die.new()
  @die5 = Die.new()
  @roll = Roll.new([@die1, @die2, @die3, @die4, @die5])

  @roll.dice.each { |die| die.roll_die()}

  p "Welcome to the Yahtzee dice simulator"
  p "Your dice numbers are:"

  @roll.dice.each { |die| p die.value()}
