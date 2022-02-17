# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    0
  else 
    arr.sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    arr.sort!.reverse!
    arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty? || arr.length == 1
    false
  else
    if arr.permutation(2).find{|a,b| a+b==n}
      true
    else
      false
    end
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, "
  str.concat(name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty? || s.start_with?(/[aeiou]/i) || s.start_with?(/[^A-Za-z0-9_]/i)
    false
  else
    true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s = s.to_i
  if s % 4 == 0 && s !~ /^[01]/
    true
  else 
    false
  end
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if isbn.empty?
      raise ArgumentError.new("ISBN number is empty")
    elsif price <=0
      raise ArgumentError.new("Price is less than or equal to zero")
    end
  end

  def price_as_string
    sprintf("$%.2f", price)
  end
end