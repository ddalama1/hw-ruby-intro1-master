# frozen_string_literal: true

# Part 1

# regex match ruby



def sum(arr)
  # YOUR CODE HERE
  total = 0
  length = arr.length()
  
  for i in 0...arr.length do
    total = total + arr[i]
  end

  return total



end

def max_2_sum(arr)
  # YOUR CODE HERE
  if(arr.length() == 0)
    return 0
  end
  if(arr.length() == 1)
    return arr[0]
  end
  arr = arr.sort

  return arr[-1] + arr[-2]


end

def sum_to_n?(arr, number)

  sum = 0
  if(arr.length == 0)
    return false
  end
  for i in 0...(arr.length - 1) do
    for j in i+1...arr.length do
      if((arr[i] + arr[j]) == number)

        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(string)
  if(string == "")
    return nil
  end
  if ((string.slice(0) =~ /[AEIOUaeiou]/) or (string.slice(0) !~ /[a-zA-Z]/))
    return false
  end
  return true
end

def binary_multiple_of_4?(string)
  if(string == "")
    return nil
  end

  if(string =~ /[2-9]/)
    return false
  end
  #check if string contains only (digits or spaces)
  for i in 0...string.length() do
    if((string[i] !~ /\d/) and (string[i] !~ / /))
      return false
    end
  end
  #check if number ends in 00. We consider spaces in the string as well.
  i = 1
  count = 0
  while(i < (string.length() + 1) and (count < 2))
    if(string[-i] !~ / /)
      count += 1
      if(string[-i] !~ /0/)
        return false
      end
    end
    i+=1
  end

  #withstands all tests
  return true

end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if(price <= 0)
      raise(ArgumentError)
    end
    if(isbn == "")
      raise(ArgumentError)
    end
  end

  def get_isbn
    @isbn
  end

  def get_price
    @price
  end

  def price_as_string
    price = @price
    s = "%.2f" % price
    s = "$" + s
    return s
  end

end

puts(binary_multiple_of_4?("1000 000"))



