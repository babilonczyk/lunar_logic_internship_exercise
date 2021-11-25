require_relative 'lib/phone'

puts "RULES: DIAL A STRING CONSISTING OF MOVEMENTS: U - UP, R - RIGHT, D - DOWN, L - LEFT."
puts "TO EXIT PRESS 'X and ENTER"

phone = Phone.new
phone.turn_on

while phone.turned_on
  str = gets
  break if phone.turn_off(str)
  phone.type(str)
end

puts "EXITED"

exit