# 680. Valid Palindrome II
# https://leetcode.com/problems/valid-palindrome-ii/
#
# @param {String} s
# @return {Boolean}

def valid_palindrome(s)
  left = 0
  right = s.length - 1

  while left < right
    if s[left] != s[right]
      return is_palindrome?(s, left + 1, right) ||
        is_palindrome?(s, left, right - 1)
    else
      left += 1
      right -= 1
    end
  end

  true
end

def is_palindrome?(s, left ,right)
  while left < right
    return false if s[left] != s[right]
    left += 1
    right -=1
  end

  true
end
