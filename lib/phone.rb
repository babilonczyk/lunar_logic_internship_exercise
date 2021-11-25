# frozen_string_literal: true

require 'io/console'
require_relative "screen"
require_relative "touchpad"

class Phone
  attr_reader :turned_on

  def initialize
    @touchpad = Touchpad.new
    @screen = Screen.new
    @turned_on = 0
  end

  def type(movement_path)
    decoded_path = @touchpad.decode_movement(movement_path)
    @screen.view_content(decoded_path)
  end
  
  def turn_on
    @turned_on = 1
  end

  def turn_off(c)
    false
    if c[0].upcase == 'X'
      turned_on = 0 
      true
    end
  end

end
