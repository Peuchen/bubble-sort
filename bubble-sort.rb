def bubble_sort(numbers)
  output = []
  while numbers.length >= 1
    a = 0
    while (a+1) < numbers.length
      if numbers[a] > numbers[a+1]
        old_num = numbers[a]
        numbers[a] = numbers[a+1]
        numbers[a+1] = old_num
      end
      a += 1
    end
    output.unshift(numbers[-1])
    numbers.pop
  end
  output
end

p bubble_sort([4,3,78,2,0,2])