# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module SimpleCalculator

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
  include SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
 "Testing your amazing OOP skills:" 
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
x=WhizBangCalculator.new
 p "Testing your amazing OOP skills:" 


answer = x.divide(100, 5)

if answer == 20
  puts "Pass!  Not bad!"
else
  puts "OOPs, not so amazing"
end
p "Mehtods of all three..."
answer = x.exponent(x.square_root(x.add(11, 38)), 2)
if answer == 49
  puts "Pass!  Not bad!"
else
  puts "OOPs, not so amazing"
end