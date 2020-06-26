puts '--------------'
puts 'IF / ELSE'

age = 15

if age >= 18
  puts 'you are adult'
else
  puts 'you are a child'
end

puts '--------------'
puts 'IF / ELSIF / ELSE'

weather = 'windy'

if weather == 'sunny'
  puts 'Wear sunglasses'
elsif weather == 'rainy'
  puts 'Take an umbrella!'
elsif weather == 'windy'
  puts 'Take a windbreaker'
else
  puts 'No special equipment needed'
end

puts '--------------'
puts 'UNLESS'

weather = 'rainy'

unless weather == 'sunny'
  puts 'no need for sunglasses'
end

if weather != 'sunny'
  puts 'no need for sunglasses'
end

puts '--------------'
puts 'BOOLEAN OPERATORS'

hour = 8

if (hour > 9 && hour < 12) || (hour > 14 && hour < 18)
  puts 'The store is open!'
else
  puts 'The store is closed'
end
