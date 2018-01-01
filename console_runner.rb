require_relative("./models/dice.rb")

  @dice1 = Dice.new()
  @dice2 = Dice.new()
  @dice3 = Dice.new()
  @dice4 = Dice.new()
  @dice5 = Dice.new()
  @dice1.roll_dice()
  @dice2.roll_dice()
  @dice3.roll_dice()
  @dice4.roll_dice()
  @dice5.roll_dice()
  p "Welcome to the Yahtzee dice simulator"
  p "Your dice numbers are:"
  p @dice1.value()
  p @dice2.value()
  p @dice3.value()
  p @dice4.value()
  p @dice5.value()
