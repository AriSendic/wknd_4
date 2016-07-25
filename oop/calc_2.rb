# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module Calculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator

  include Calculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:



p "Testing your amazing OOP skills:" 
x = FancyCalculator.new

answer = x.divide(100, 5)

if answer == 20
  puts "Pass!  Not bad!"
else
  puts "OOPs, not so amazing"
end
p "Methods of both..."
answer = x.square_root(x.add(11, 38))
if answer == 7
  puts "Pass!  Not bad!"
else
  puts "OOPs, not so amazing"
end
