def bubble_sort(arr)
  l = arr.length - 1
  counter = 0
  while counter < arr.length
    l.times do |x|
      arr[x], arr[x + 1] = arr[x + 1], arr[x] if arr[x] > arr[x + 1]
    end
    counter += 1
  end
  arr
end

def bubble_sort_by(arr)
  l = arr.length - 1
  counter = 0
  while counter < arr.length
    l.times do |x|
      yield arr[x], arr[x + 1] = arr[x + 1], arr[x] if arr[x].length < arr[x + 1].length
    end
    counter += 1
  end
  arr
end

arr = [17, 12, 85, 42, 23]
p bubble_sort(arr)

p bubble_sort_by(%w[thanks for your review]) { |right, left|
  left.length - right.length
}
