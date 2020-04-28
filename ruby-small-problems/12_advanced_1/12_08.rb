def merge_sort(arr)
  return [] if arr.empty?
  return arr if arr.size == 1
  merge(merge_sort(arr[0..arr.size / 2 - 1]), merge_sort(arr[(arr.size/2)..-1]))
end

def merge(arr1, arr2)
  idx2 = 0
  merged_arr = []
  arr1.each do |element|
    while idx2 < arr2.size && arr2[idx2] < element
      merged_arr << arr2[idx2]
      idx2 += 1
    end
    merged_arr << element
  end
  merged_arr.concat(arr2[idx2..-1]) if idx2 < arr2.size
  merged_arr
end

merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
