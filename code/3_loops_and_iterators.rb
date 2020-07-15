puts 'WHILE'

number = 1
while number < 10
  puts number
  number = number + 1
  # same as: number += 1
end

puts '-----------------'
puts 'UNTIL'

number = 1
until number > 10
  puts number
  number += 1
end

puts '-----------------'
puts 'FOR'

for number in 1..10
  puts number
end

puts '-----------------'
puts 'NEXT'

for number in 1..5
  next if number % 2 == 0
  # remainder of division is 0
  # next if number is even

  puts number
end

puts '-----------------'
puts 'LOOP'

# These do the same
# These are infinit loops - that's why they are commented 

# loop { puts 'Hello, world' }

# loop do
#   puts 'Hello, world'
# end

# To stop infinit loop
number = 0
loop do
  puts number
  number += 1
  break if number > 5
end

puts '-----------------'
puts 'EACH'

# collection of numbers
numbers = [1, 2, 3, 4, 5]

numbers.each do |number|
  puts number
end

puts '-----------------'
puts 'TIMEs'

3.times do
  puts 'Goalllllll'
end