# Task 1 The museum of incredible dull things
# The museum of incredible dull things wants to get rid of some exhibitions. Miriam, the interior architect, comes up with a plan to remove the most boring exhibitions. She gives them a rating, and then removes the one with the lowest rating.
# Given an array of integers, remove the smallest value. Do not mutate the original array/list. If there are multiple elements with the same value, remove the one with a lower index. If you get an empty array/list, return an empty array/list.
def remove_smallest(numbers)
    return [] if numbers.empty?
    new_numbers = numbers.dup
    min_value = new_numbers.min
    min_index = new_numbers.index(min_value)
    new_numbers.delete_at(min_index)
    new_numbers
  end
  

# Task 2
# You will be given an array and a limit value. You must check that all values in the array are below or equal to the limit value. If they are, return true. Else, return false.

# You can assume all values in the array are numbers.

def small_enough(a, limit)
    return a.max <= limit
end

# Task 3
# Finish the solution so that it sorts the passed in array of numbers. If the function passes in an empty array or null/nil value then it should return an empty array.
def solution(nums)
    nums ? nums.sort : []
end

# Task 4:Complete the function/method so that it returns the url with anything after the anchor (#) removed.
def remove_url_anchor(url)
    anchor_index = url.index('#')
   if(anchor_index != 1) 
     url_fix = url.slice(0...anchor_index)
   end
   return url_fix
 end

#  Task 5: Count the number of divisors of a positive integer n.
# Random tests go up to n = 500000.

def divisors(n)
    count = 0
    (1..n).each do |element|
      if(n % element == 0)
        count += 1
      end
      end
    return count
  end

# Task 6 You are given an odd-length array of integers, in which all of them are the same, except for one single number.
# Complete the method which accepts such an array, and returns that single different number.
# The input array will always be valid! (odd-length >= 3)

def stray (numbers)
    for i in (0..numbers.length)
      if (numbers.count(numbers[i]) == 1 )
        return numbers[i]
       elsif(numbers.count(numbers[i]) >= 2)
       end
    end
 end

#  Task 7: