def sort(array, output)
    unsorted = array
    output_array = output
    current_length = unsorted.length
    rand_index = rand(current_length)
    current_index = unsorted[rand_index]

    return output_array if current_length < 1

    if output_array.length == 0
      output_array << unsorted.pop
      sort(unsorted, output_array)
    end

    if output_array.first < current_index
      output_array.unshift(current_index)
      unsorted.delete_at(rand_index)
    end

    if output_array.last > current_index
      output_array << current_index
      unsorted.delete_at(rand_index)
    end

    sort(unsorted, output_array)
end

arr = [1, 44, 278, 88, 56]

puts sort(arr, [])

