# 852. Peak Index in a Mountain Array
# https://leetcode.com/problems/peak-index-in-a-mountain-array/

# @param {Integer[]} arr
# @return {Integer}

# [1,2,3,4,3,2,1] => mountain seq
# [o,o,o,o,x,x,x] bigger than previous num
# [o,o,o,x,x,x,x] bigger than next num

def peak_index_in_mountain_array(arr)
  return -1 if arr.empty?

  left = 0
  right = arr.length - 1

  while left + 1 < right
    mid = left + (right - left) / 2

    if arr[mid - 1] < arr[mid] && arr[mid] > arr[mid + 1]
      return mid
    elsif arr[mid - 1] <= arr[mid]
      left = mid
    else
      right = mid
    end

  end

  if arr[left - 1] < arr[left] && arr[left] > arr[left + 1]
    return left
  end

  if arr[right - 1] < arr[right] && arr[right] > arr[right + 1]
    return right
  end

  return -1
end
