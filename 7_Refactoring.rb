# one line if statement
age = 20
if age >= 18
  puts "you can vote!"
end

# refactored
age = 16
puts "you can vote!" if age >=18


# the order matters!
puts if age >=18 "you can vote"


# ternary
age = 16
puts age >= 18 ? "you can vote!" : "sorry, you can't vote"

# same as...
if age >= 18
  puts "You can vote"
else
  puts "sorry"
end


#case statement
language = "ruby"
case language
  when "ruby"
    puts "Sounds like you're building web apps!"
  when "html"
    puts "Putting content your website"
  when "css"
    puts "Good style"
  else
    puts "Sounds interesting!"
  end

# implicit return
def multiply(x,y)
  x * y
end

puts multiply(2,4)




# conditional assignment
teacher = nil
# teacher = "Joanna"
teacher ||= "Dennis"

puts "Today's teacher is #{teacher}."


# upto & downto
95.upto(100) { |num| puts num }
"a".upto("z") { |letter| print letter }
100.downto(95) { |num| puts num }

# same as...
for num in 95..100
  print num , " "
end

# one line blocks
array = [1,2,3,4,5]
array.each { |num| puts num * 2 }



# shovel
array.push(6)
p array

array << 7
p array




# Code Academy: Refactor Factory
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
  return "n must be an integer." unless n.is_a? Integer

  return "n must be greater than 0." if n <= 0

  Prime.first n
end

puts first_n_primes(10)
