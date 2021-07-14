# 1. Two Sum
# https://leetcode.com/problems/two-sum/
#
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# Time O(n) Space O(n)
def two_sum(nums, target)
  hash = {}

  nums.each_with_index do |num, idx|
    if hash[num]
      return [idx, hash[num]]
    else
      hash[target - num] = idx
    end
  end
end
