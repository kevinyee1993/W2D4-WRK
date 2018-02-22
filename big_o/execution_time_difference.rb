def my_min1(list)

  list.each_with_index do |el, idx|
    found_smallest = true

    list.each_with_index do |el2, idx2|
      next if idx == idx2
      if el < el2
        found_smallest = false
      end
      return el if found_smallest == true
    end
  end
end

def my_min_2(list)
  min = list.first
  list.each { |el| min = el if el < min }
  min
end

def largest_contiguous_subsum(list)
  subarrays = []

  list.each_with_index do |x, idx|
    list.each_with_index do |y, jdx|
      subarrays.push(list[idx...jdx])
    end
  end

  subarrays.uniq!

  biggest_sum = 0

  subarrays.each do |arr|
    next if arr.empty?
    if arr.reduce(:+) > biggest_sum
      biggest_sum = arr.reduce(:+)
    end
  end

  biggest_sum
end

def better(list)
  largest_sum = list.max
  running_sum = 0

  #if all negative, then return list.max

  list.each do |el|
    if el > 0
      running_sum += el
    else
      largest_sum = running_sum if running_sum > sum
      running_sum = 0
    end
  end

  largest_sum
end
