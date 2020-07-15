# yield
def welcome_message
  print "Welcome, "
  yield
  print ". Hope you enjoy today's Ruby session!"
end

puts "What's your name?"
student_name = gets.chomp

welcome_message { print "#{student_name}"}

puts "What's your student number?"
student_number = gets.chomp

welcome_message { print "#{student_number}"}

# creating & calling a proc
my_proc = Proc.new { print "#{student_name}"}
my_proc.call

welcome_message(&my_proc)

numbers = [10, 5, 7, 6, 1, 7, 5, 3, 9, 10]

over_5 = Proc.new {|number| number > 5}

print numbers.select(&over_5)

print numbers.select {|num| num > 5}

# procs don't care about arguments
proc_arguments = Proc.new { |x,y| puts "We are adding #{x} and #{y}"}

proc_arguments.call(2,4)

# procs do not pass back control to the method
def proc_method
  my_proc = Proc.new { return "I'm a proc"}
  my_proc.call
  "Last line of proc_method"
end

puts proc_method

# lambdas
my_lambda = lambda { puts "This my lambda."}
my_lambda.call

#lambdas care about arguments
proc_arguments = Proc.new {|x,y| puts "We are adding #{x} and #{y}"}
proc_arguments.call

lambda_arguments = lambda {|x,y| puts "We are adding #{x} and #{y}"}
lambda_arguments.call

# lambdas pass back control to the method
def lambda_method
  my_lambda = lambda {return "I'm a lambda"}
  my_lambda.call
  return "I'm the last line of the method!"
end

puts lambda_method
