# frozen_string_literal: true

class Touchpad

  def initialize
    #Phone keypad
    @keys = [
      [1,2,3],
      [4,5,6],
      [7,8,9]
    ]
    #Current coordinates
    @x = 1
    @y = 1
  end

  def decode_movement(movement_path)
    translate(movement_path)
  end
  
  private

  # We want to translate the strong of movements on the touchpad into the final key value
  # U - up movement
  # R - right movement
  # D - down movement
  # L - left movement

  def translate(str)
    str.upcase.each_char do |letter|
      if letter == "U"
        @x = @x - 1 if @x > 0 || @x < 2
      elsif letter == "R" 
        @y = @y + 1 if @y > 0 || @y < 2
      elsif letter == "D" 
        @x = @x + 1 if @x > 0 || @x < 2
      elsif letter == "L"   
        @y = @y - 1 if @y > 0 || @y < 2
      end
    end
    @keys[@x][@y].to_s
  end
end