# frozen_string_literal: true

# for empty error
class EmptyArray < StandardError
  def initialize(input)
    super("this is an empty array \n The array provided was #{input}") 
  end
end

# raises an error if input is not an array
class NotAnArray < StandardError
  def initialize(input)
    super("Provided input is not an array \n The array provided was #{input}")
  end
end

# raises an error if array doesn't have any even no.
class NoEvenNum < StandardError
  def initialize(input)
    super("Provided array doesn't have any even no. \n The array provided was #{input}")
  end
end

def even_numbers(input)
  c = 0
  if input == []
    raise EmptyArray, input
  elsif input.class != Array
    raise NotAnArray, input
  elsif input.class == Array
    index = 0
    while index < input.length
      c += 1 if input[index].to_i % 2 == 0
      index += 1
    end
    raise NoEvenNum, input if c.zero?
  end
  
 
end

# even_numbers([])
# even_numbers("abc")
even_numbers(ARGV)

