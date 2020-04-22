def bubble_sort(arr)
  yield(arr)
end
arr = [5, 4, 3, 2, 1]

bubble_sort(arr) do
  l = arr.length - 1
  counter = 0
  while counter < arr.length
    l.times do |x|
      arr[x], arr[x + 1] = arr[x + 1], arr[x] if arr[x] > arr[x + 1]
    end
    counter += 1
  end
  print arr
end
