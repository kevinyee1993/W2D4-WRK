def bad_two_sum?(arr, target)
  idx = 0

  while idx < arr.length
    jdx = idx + 1

    while jdx < arr.length
      return true if arr[idx] + arr[jdx] == target
      jdx += 1
    end

    idx += 1
  end

  false
end

def okay_two_sum?(arr, target)
  arr.each do |el|
    number = target - el
    return true unless binary_search(arr, number).nil?
  end

  false
end

def binary_search(arr, target)
  return nil if arr.empty?
  mid = arr.length / 2

  if arr[mid] ==  target
    return mid
  elsif arr[mid] > target
    return binary_search(arr[0...mid], target)
  else
    right_idx = binary_search(arr[mid+1..-1], target)

    if right_idx.nil?
      return nil
    else
      return mid + right_idx + 1
    end
  end
end
