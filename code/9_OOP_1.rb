my_string = "John"
my_array = [1,2,3,]
my_int = 45
my_float = 1.25

puts my_string.class
puts my_array.class
puts my_int.class
puts my_float.class


class Car
  def initialize(make,model)
    @make = make
    @model = model
  end

  def honk
    puts "beep beep!"
  end

  def start_car
    puts "Your car is now on."
  end
end

new_car = Car.new("Ford", "F-150")
puts new_car.inspect

car2 = Car.new("Ford", "Bronco")
puts car2.inspect

car2.honk

car2.start_car

# -------------

# GLOBAL VARIABLE
coding_bootcamp = "Le Wagon"

class User
  # CLASS VARIABLE
  @@greeting = "Hello!"

  def initialize(username,password,age)
    # INSTANCE VARIABLE
    @username = username
    @password = password
    @age = age
  end

  def current_user
    @username
  end

  def of_legal_age?
    # LOCAL VARIABLE
    @age >= 18 ? legal_age = true : legal_age = false
  end
end

john = User.new("John", 12345, 16)

class Person
  def initialize(name,surname)
    @name = name
    @surname = surname
  end

  def greeting
    puts "Hi! My name is #{@name} #{@surname}"
  end
end

class Teacher < Person
  def greeting
    puts "hey, what's up?"
  end
end

john = Person.new("John","Smith")
puts john.inspect
john.greeting

dennis = Teacher.new("Dennis","Neely")
puts dennis.inspect
dennis.greeting
