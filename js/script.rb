add_numbers = lambda do |num1, num2|
  return num1 + num2
end

subtract_numbers = lambda do |num1, num2|
  return num1 - num2
end

def combine(m, num1, num2)
  return m.call(num1, num2)
end

puts combine(add_numbers, 3, 4)
puts combine(subtract_numbers, 3, 4)

# Why lambda?: add_numbers2 -> Function and a variable
# add_numbers is a method (Immediately calls)
# can't treat a method as a variable all the time

#puts add_numbers(3, 4)
#puts add_numbers.call(3, 4)

#puts subtract_numbers(3, 4)
#puts subtract_numbers.call(3, 4)

#puts add_numbers.inspect

