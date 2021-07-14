# 167. Two Sum II - Input array is sorted
# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
#
# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
#
def two_sum(nums, target)
  p1 = 0
  p2 = nums.length - 1

  while p1 < p2
    if (nums[p1] + nums[p2]) == target
      return [p1, p2]
    elsif (nums[p1] + nums[p2]) > target
      p2 -= 1
    else
      p1 += 1
    end
  end
  return [p1, p2]
end

