class Roll

  attr_reader :dice

  def initialize(dice)
    @dice = dice
  end

  def roll_set_hold_status(hold_status_array)
    hold_status_array.each_with_index do
      |hold_status, i|
      if hold_status == "T" then
        @dice[i].die_set_hold_status(true)
      elsif hold_status == "F" then
        @dice[i].die_set_hold_status(false)
      end
    end
  end

end
