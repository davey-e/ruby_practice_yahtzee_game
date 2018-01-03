require_relative("./models/die.rb")
require_relative("./models/roll.rb")
require_relative("./models/round.rb")


@die1 = Die.new()
@die2 = Die.new()
@die3 = Die.new()
@die4 = Die.new()
@die5 = Die.new()
@roll = Roll.new([@die1, @die2, @die3, @die4, @die5])

p "Welcome to the Yahtzee dice simulator"
p "Your dice numbers for your first roll are:"

@roll.roll_all_dice
@roll.dice.each { |die| p die.value()}

p "Indicate which dice you want to hold:"
p "T = hold, F = Dont hold"
p "E.g. T, F, F, T, F"
hold_choices = gets.chomp().upcase.split(",")
@roll.roll_set_hold_status(hold_choices)

p "Roll 2"

@roll.roll_all_dice
@roll.dice.each { |die| p die.value()}

p "Indicate which dice you want to hold:"
p "T = hold, F = Dont hold"
p "E.g. T, F, F, T, F"
hold_choices = gets.chomp().upcase.split(",")
@roll.roll_set_hold_status(hold_choices)

p "Roll 3"

@roll.roll_all_dice
@roll.dice.each { |die| p die.value()}
