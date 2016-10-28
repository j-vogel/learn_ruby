#write your code here
def add number1, number2
  number1 + number2
end

def subtract number1, number2
  number1 - number2
end

def sum numbers
  sum = 0
  numbers.each { |i| sum += i}
  sum
end

def multiply numbers
  product = 1
  numbers.each { |i| product = product * i}
  product
end

def power number1, number2
  power = number1
  (2..number2).each {power = power * number1}
  power
end

def factorial number
  product = 1
  if number == 0
    return product
  end
  number.downto(1) { |i| product = product * i}
  product
end
