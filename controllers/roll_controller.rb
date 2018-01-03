require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('../models/die.rb')
require_relative('../models/roll.rb')

get('/roll') do
  @die1 = Die.new()
  @die2 = Die.new()
  @die3 = Die.new()
  @die4 = Die.new()
  @die5 = Die.new()
  @roll = Roll.new([@die1, @die2, @die3, @die4, @die5])
  @roll.roll_all_dice
  erb(:"roll/index")
end
