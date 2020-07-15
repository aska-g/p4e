def add_method(x,y)
  puts x + y
end

add_method(5,10)
add_method(500,1000)

puts '----------------------------'

def weather_method(weather)
  if weather == 'sunny'
    puts 'Wear sunglasses'
  elsif weather == 'rainy'
    puts 'Take an umbrella!'
  elsif weather == 'windy'
    puts 'Take a windbreaker'
  else
    puts 'No special equipment needed'
  end
end

weather_method("sunny")
weather_method("rainy")

puts '----------------------------'

def say_hi(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}"}
end

say_hi("hey", "dennis", "maria", "joanna", "bill")


puts '----------------------------'

def double(n)
  n * 2
end

output = double(6)
output += 2
puts output

puts '----------------------------'

names = ["Zoe", "John", "Zack", "Andy"]

# puts names.sort
# puts names.reverse
puts names.sort.reverse

puts '----------------------------'

names.each do | name |
  puts reversed_name = name.reverse
end

puts '----------------------------'

puts '----------------------------'
def alphabetize(arr, rev = false)
  arr.sort!
  if rev == true
    arr.reverse!
  else
    return arr
  end
end

numbers = [3, 5, 1, 6]

puts alphabetize(numbers, true)















































































