def bubble_sort(values)

  array = values

  for j in (0..array.size-1)

    for i in (0..array.size - 2)

      if array[i] > array[i+1]
        aux = array[i]
        array[i] = array[i+1]
        array[i+1] = aux
      end

    end

  end
  array
end


bubble_sort([4,3,78,2,0,2])
