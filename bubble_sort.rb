def bubble_sort(arr)
  yield(arr)
end

arr = [5, 4, 3, 2, 1]

bubble_sort(arr) do
  loop do
    l = arr.length - 1
    count = 0
    l.times do |x|
      if arr[x] > arr[x + 1]
        arr[x], arr[x + 1] = arr[x + 1], arr[x]
        count += 1
        print arr
      end
      break if count == arr.length
    end
  end
  return
end
