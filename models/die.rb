class Die

attr_reader :value, :hold

  def initialize(value = 0, hold = false)
    @value = value
    @hold = hold
  end

  def roll_die
    if !@hold then
      @value = rand(1..6)
      return @value
    else
      return @value
    end
  end

end
