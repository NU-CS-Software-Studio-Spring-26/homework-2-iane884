# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1

  # sort array from smallest to largest
  sorted = arr.sort

  # add largest two elements
  sorted[-1] + sorted[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # fewer than 2 elements -> can't form pair
  return false if arr.length < 2

  # check every pair
  for i in 0...arr.length
    for j in i+1...arr.length
      if arr[i] + arr[j] == n
        return true
      end
    end
  end

  # if no pair works
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # return false if string is empty
  return false if s.length == 0

  first_char = s[0]

  # ensure it's a letter
  if first_char =~ /[a-zA-Z]/
    # ensure it's not a vowel
    return !(first_char =~ /[aeiouAEIOU]/)
  end

  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # binary: must be only 0s and 1s
  return false if s !~ /^[01]+$/

  # 0 is a multiple of 4
  return true if s == "0"

  # check divisibility by 4
  # (binary number divisble by 4 if it ends in 00)
  return s.end_with?("00")
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  # getters and setters
  attr_accessor :isbn, :price

  # constructor
  def initialize(isbn, price)
    # check for invalid inputs
    if isbn == "" || price <= 0
      raise ArgumentError
    end

    @isbn = isbn
    @price = price
  end

  # return price of book
  # formatted with a leading dollar sign and two decimal places
  def price_as_string
    "$" + sprintf('%.2f', @price)
  end

end
