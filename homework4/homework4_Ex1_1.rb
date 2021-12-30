class Bricks
  attr_reader :color, :serial_number, :state

  def initialize(color, serial_number, state)
    @color = color
    @serial_number = serial_number
    @state = state
  end

end