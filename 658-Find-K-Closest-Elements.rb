# 658. Find K Closest Elements
# https://leetcode.com/problems/find-k-closest-elements
#
# @param {Integer[]} arr
# @param {Integer} k
# @param {Integer} x
# @return {Integer[]}

def find_closest_elements(arr, k, x)
  return -1 if arr.empty?

  right = find_upper_index(arr, 0 , arr.length - 1, x)
  left = right - 1

  results = []

  k.times do |i|
    if is_left_closer(arr, left, right, x)
      results.unshift(arr[left])
      left -= 1
    else
      results.push(arr[right])
      right += 1
    end
  end

  results
end

def find_upper_index(arr, left ,right, target)
  while left + 1 < right
    mid = left + (right - left) / 2

    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      left = mid
    else
      right = mid
    end
  end

  return left if arr[left] >= target
  return right if arr[right] >= target

  return arr.length - 1
end

def is_left_closer(arr, left, right, target)
  if left < 0
    false
  elsif right > arr.length - 1
    true
  else
    target - arr[left] <= arr[right] - target
  end
end
