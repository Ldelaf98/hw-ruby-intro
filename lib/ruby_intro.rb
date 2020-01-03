# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  
  #result = 0
  #arr.each {|x| result += x}
  #result
  
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE

  #result = 0
  #result = arr.sort.last(2).sum
  #result
  
  #result = 0
  #arr.sort!
  #arr = arr.last(2)
  #arr.each {|x| result += x}
  #result
  
  result = 0
  result = arr.sort.reverse.first(2).sum
  result
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  arr.combination(2) {|c| return true if c.sum == n}
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  
  'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  Regexp.new("^[bcdfghjklmnpqrstvwxyz]", Regexp::IGNORECASE).match?(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #if /^[01]+$/.match?(s)
  #  s.to_i(2) % 4  == 0
  #else
  #  false
  #end
  
  /^(0|00|([01]+00))$/.match?(s)
end

# Part 3

class BookInStock 
# YOUR CODE HERE

  def initialize(isbn, price)
    raise ArgumentError.new(
      "ISBN is empty"
    ) if isbn.empty?
    @isbn = isbn
      
    raise ArgumentError.new(
      "Price can't be negative"
    ) if price <= 0
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    raise ArgumentError.new(
      "ISBN is empty"
    ) if isbn.empty?
    @isbn = isbn
  end
  
  def price=(price)
    raise ArgumentError.new(
      "Price can't be negative"
    ) if price.negative?
    @price = price
  end
  
  def price_as_string
    result = "$" + price.to_s
    if result.match?(/[$][0-9]+$/)
      result += ".00"
    elsif result.match?(/[$][0-9]+[.][0-9]$/)
      result += "0"
    end
    result
  end
end
