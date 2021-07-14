# https://leetcode.com/problems/search-a-2d-matrix/submissions/
# 74. Search a 2D Matrix
#
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}

def search_matrix(matrix, target)
  n_max = matrix.size - 1       # row
  m_max = matrix.first.size - 1 # column

  n = 0
  m = m_max # start from top right

  # n * log(m)
  while n <= n_max
    compare_target = matrix[n][m]

    if target == compare_target
      return true
    end

    if target > compare_target
      n += 1
    else
      return b_search(matrix[n], 0, m_max - 1, target)
    end
  end

  return false
end

def b_search(arr, left, right, target)
  return false if arr.empty?

  while left + 1 < right
    mid = (left + right) / 2

    if arr[mid] == target
      return true
    elsif arr[mid] < target
      left = mid
    else
      right = mid
    end
  end

  if arr[left] == target
    return true
  end

  if arr[right] == target
    return true
  end

  return false
end


# log(n * m)
# view as big array
def search_matrix(matrix, target)
  column_size = matrix.first.size

  left = 0
  right = column_size * matrix.size - 1

  while left + 1 < right
    mid = (left + right) / 2

    if matrix[mid / column_size][mid % column_size] == target
      return true
    elsif matrix[mid / column_size][mid % column_size] > target
      right = mid
    else
      left = mid
    end
  end

  if matrix[left / column_size][left % column_size] == target
    return true
  end

  if matrix[right / column_size][right % column_size] == target
    return true
  end

  return false
end
