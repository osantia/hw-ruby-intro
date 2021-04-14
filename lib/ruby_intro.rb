# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  length = arr.length
  sum = 0
  if length == 0
    return sum
  else
    arr.each { |num|
    sum += num
  }
    return sum
  end
end

def max_2_sum arr

  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort
    if arr[arr.length - 1] < 0
      largest = arr[0]
      second = arr[1]
    else
      largest = arr[-1]
      second = arr[-2]
    end
    sum = largest + second
    return sum
  end

end

def sum_to_n? arr, n
  dictionary = {}
  if arr.length == 1
    return false
  end
  for i in 0..arr.length
    num = n - arr[i].to_i
    if dictionary[n - num] 
      return true
    end
    dictionary[num] = i
  end
  return false
end

# Part 2

def hello(name)
  hell = "Hello, " + name
  return hell
end

def starts_with_consonant? s
  if s =~ /\A\d[^aeiou]/
    return s
  else
    return false
  end
end

def binary_multiple_of_4? s
  return false unless s =~ /^[01]+$/
    s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize isbn, price

    @isbn = isbn
    @price = price
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
  end

  def price_as_string
    money = sprintf('%.2f', @price)
    return "$"+money
  end

end
