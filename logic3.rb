# Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.

# This Kata is similar to the Valid Parentheses Kata, but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!

# All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.

# Task 1
def validBraces(braces)
    (braces.length / 2).times do |i|
      braces.sub!("{}", "")
      braces.sub!("[]", "")
      braces.sub!("()", "")
    end
    braces.empty?
  end

# Task 2
# Your task is to write a function which returns the sum of a sequence of integers.
# The sequence is defined by 3 non-negative values: begin, end, step.
# If begin value is greater than the end, your function should return 0. If end is not the result of an integer number of steps, then don't add it to the sum. See the 4th example below.

def sequence_sum(begin_number, end_number, step)
    return 0 if begin_number>end_number 
    sum=0
    while begin_number<=end_number do 
      sum+=begin_number
      begin_number+=step
    end
    sum
 end

#  Write simple .camelCase method (camel_case function in PHP, CamelCase in C# or camelCase in Java) for strings. All words must have their first letter capitalized without spaces.

class String
    def camelcase
     self.split.map{|x| x.capitalize}.join("")
    end
end

# The drawing shows 6 squares the sides of which have a length of 1, 1, 2, 3, 5, 8. It's easy to see that the sum of the perimeters of these squares is : 4 * (1 + 1 + 2 + 3 + 5 + 8) = 4 * 20 = 80 

# Could you give the sum of the perimeters of all the squares in a rectangle when there are n + 1 squares disposed in the same manner as in the drawing:

def perimeter(n)
    arr = [1,1]
    total = 0
    sum = 2
    (0...n-1).each do |i| 
       n = arr[i] + arr[i + 1]
      arr.push(n)
      sum += n
    end
      return sum * 4
end


# Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?

# Example:
# "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: 

# "100 180 90 56 65 74 68 86 99"


def order_weight(string)
    weights = string.split(" ")
    weights.sort_by {|weight| [add_digits(weight), weight]}.join(" ")
end

def add_digits(str)
  str.each_char.inject(0) {|sum, digit| sum + digit.to_i}
end