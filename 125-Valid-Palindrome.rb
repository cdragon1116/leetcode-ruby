# 125. Valid Palindrome
# https://leetcode.com/problems/valid-palindrome/

# @param {String} s
# @return {Boolean}

def is_palindrome(s)
  valid_chars = Set.new([*'a'..'z', *'0'..'9'])
  left, right = 0, s.length - 1

  while left < right
    while left < right && !valid_chars.include?(s[left].downcase)
      left += 1
    end

    while left < right && !valid_chars.include?(s[right].downcase)
      right -= 1
      next
    end

    return false if s[left].downcase != s[right].downcase

    left += 1
    right -= 1
  end

  return true
end
