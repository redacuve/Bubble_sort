def bubble_sort (array)
  size = array.size
  size.times do
    array.each_with_index do |v,i|
      break if i == size -1
      array[i],array[i + 1] = array[i + 1],array[i] if v > array[i + 1]
    end
  end
  array
end

def bubble_sort_by(arr)
  for i in 0...arr.length
    for j in 0...arr.length-1-i
      if yield(arr[j],arr[j+1]).positive?
        aux = arr[j]
        arr[j] = arr[j+1]
        arr[j+1] = aux
      end
    end
  end
  return arr
end
