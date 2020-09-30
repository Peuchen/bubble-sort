#Define a method that accepts an array as an argument
def bubble_sort(numbers)
#Compare pairs of numbers
#If the first number is higher than the second, switch them around
  output = []
  a = 0
  if numbers.is_a?(Array)
    while (a+1) < numbers.length
      if numbers[a] > numbers[a+1]
        old_num = numbers[a]
        numbers[a] = numbers[a+1]
        numbers[a+1] = old_num
      end
    #Else, keep the numbers in the same order
    #Compare the next pairs
    #Return the sorted array
      a += 1
    end
  end
  output.unshift(numbers[-1])
  numbers.tap(&:pop)
  if numbers.length > 1
    bubble_sort(numbers)
  end
  output
end

p bubble_sort([4,3,78,2,0,2])