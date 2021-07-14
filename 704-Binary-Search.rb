# 704. Binary Search
# https://leetcode.com/problems/binary-search/
#
# @param {Integer[]} nums
# @param {Integer} target
# @return {Iknteger}

# iterative
def search(nums, target)
  return -1 if nums.empty? || nums.nil?

  p1 = 0
  p2 = nums.length - 1

  while p1 + 1 < p2
    mid = p1 + (p2 - p1) / 2

    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      p1 = mid
    else
      p2 = mid
    end
  end


  return p1 if nums[p1] == target
  return p2 if nums[p2] == target
  return -1
end

# recursive
def search_recursice(nums, target)
  return -1 if nums.empty?
  b_search(nums, 0, nums.length - 1, target)
end

def b_search(nums, left, right, target)
  return -1 if left > right

  mid = left + (right - left) / 2
  return mid if nums[mid] == target

  if nums[mid] < target
    return b_search(nums, mid + 1, right, target)
  else
    return b_search(nums, left, mid - 1, target)
  end
end
