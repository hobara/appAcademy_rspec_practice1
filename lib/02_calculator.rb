def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  array.empty? ? 0 : array.reduce(:+)
end

def multiply_two(num1, num2)
  num1 * num2
end

def multiply_several(array)
  array.reduce(:*)
end

def power(num1, num2)
  num1 ** num2
end

def factorial(num)
  num == 0 ? 0 : (1..num).reduce(:*)
end
