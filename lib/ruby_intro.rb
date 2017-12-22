# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  b = arr.sort.reverse
  if b.length == 0
    0
  elsif b.length == 1
    b[0]
  else
    sum(b[0..1])
  end
end

def sum_to_n? arr, n
  success = false
  arr.length.times do    
    f = arr.pop
    arr.map do |s|
      if f + s == n
        success = true
      end
    end
  end
  success
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant? s
  if /^[aeiou]+/.match(s.downcase) 
    false
  elsif /^[a-z]/.match(s.downcase)
    true
  else
    false
  end
end

def binary_multiple_of_4? s
  if s =~ /[^01]+/  or s.length == 0
    false
  else
    s.to_i(10) % 4 == 0
  end
end

# Part 3

class BookInStock
  def  initialize(isbn, price)
    raise ArgumentError if isbn.length == 0
    @isbn = isbn
    raise ArgumentError if price <= 0
    @price = price
  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    "$%0.2f" % @price
  end

  
  


end
