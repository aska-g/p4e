puts '--------------'
puts "STRINGS"

puts 'Wagon' == 'wagon' #=> false, because strings are case-sensitive
puts 'joanna'.upcase #=> 'JOANNA'
puts 'joanna'.capitalize #=> "Joanna"
puts 'joanna'.length #=> 6

# String interpolation
number = 5
puts "We have #{number} days left to xmas" #=> 'We have 5 days left to xmas'

puts "2 + 2 is equal to #{2 + 2}" #=> '2 + 2 is equal to 4'

puts '--------------'
puts "INTEGERS"

puts 3.even? #=> false
puts 3.odd? #=> true

puts 10 / 3 #=> 3
puts 10.0 / 3 #=> 3.33333333

puts 2**3 #=> 2 * 2 * 2 => 8
puts 3**2 #=> 3 * 3 => 9

puts 10 % 3 #=> 1 (remainder)

puts '--------------'
puts "VARIABLES"

puts hair_color = 'black'
hair_color = 'blond'

puts hair_color #=> 'blond'

puts '--------------'
puts "PUTS AND PRINT"
print 'hello' #=> no new line at the end
puts 'goodbye' #=> new line after 'goodbye'

puts '--------------'
puts "GETS"
puts 'Where are you from?'
city = gets.chomp #=> user types in 'oslo'

puts "You are from #{city.capitalize}" #=> 'You are from Oslo'


puts '--------------'
puts 'CODECADEMY QUESTION'

print "What's your first name? "
first_name = gets.chomp # user types in 'joanna'
first_name2 = first_name.capitalize
# first_name.capitalize! #=> this would permanently change the original user input

puts first_name #=> 'joanna'
puts first_name2 #=> 'Joanna'
