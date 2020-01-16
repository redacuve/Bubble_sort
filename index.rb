def bubble_sort(array)
  size = array.size
  size.times do
    array.each_with_index do |v, i|
      break if i == size - 1

      array[i], array[i + 1] = array[i + 1], array[i] if v > array[i + 1]
    end
  end
  array
end

def bubble_sort_by(arr)
  size = arr.size
  size.times do
    arr.each_with_index do |_, i|
      break if i == size - 1

      arr[i], arr[i + 1] = arr[i + 1], arr[i] if yield(arr[i], arr[i + 1]) >= 1
    end
  end
  arr
end
