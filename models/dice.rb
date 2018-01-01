class Dice

attr_reader :value, :hold

  def initialize(value = 0, hold = false)
    @value = value
    @hold = hold
  end

end
