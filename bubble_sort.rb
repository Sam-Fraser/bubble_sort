array = [3,6,1,8,2,9,3,14,12,0]

def bubble_sort(arr)
  #print original array
  p arr

  #parse through the array as many times as necessary to sort the array
  #the first parse through should put the largest number at the end
  #subsequent parse throughs should place the next largest number at the second, third, fourth, etc. to last position.
  #when parsing through, for each pair of numbers, compare the numbers
  #if the first number is larger than the second number swap them
  #move to the next set where the second number from the last set is now the first number
  arr.length.times do
    
    arr.each_with_index do |num, idx|
    if arr[idx+1] != nil && arr[idx] > arr[idx+1]
        arr[idx], arr[idx+1] = arr[idx+1], arr[idx]
      end
    end
  end

  #print the final array
  p arr

end

#this bubble_sort method is destructive
bubble_sort(array)
