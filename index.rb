  puts "test"

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

  ##It's working !

=begin   def bubble_sort_by(array) do |left,right|
     left.length - right.length
   end
=end

  puts bubble_sort([4,3,78,2,0,2])