# 153. Find Minimum in Rotated Sorted Array
# https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/
#
# @param {Integer[]} nums
# @return {Integer}

# O(logn) -> binary search
#
# [4,5,6,7,1,2,3]
# [o,o,o,o,x,x,x] -> find the first x
# x = the first num <= 3

def find_min(nums)
  return -1 if nums.empty?

  left = 0
  right = nums.length - 1
  threshold = nums[right]

  while left + 1 < right
    mid = left + (right - left) / 2

    if nums[mid] > threshold
      left = mid
    elsif
      right = mid
    end
  end

  return [nums[left], nums[right]].min
end
