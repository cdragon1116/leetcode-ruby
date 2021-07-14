# 240. Search a 2D Matrix II
# https://leetcode.com/problems/search-a-2d-matrix-ii/
#
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}

def search_matrix(matrix, target)
  column_size = matrix.first.size
  row_size = matrix.size

  # start from bottom left
  i = 0            # column
  j = row_size - 1 # row

  while j >= 0 && i < column_size
    if matrix[j][i] == target
      return true
    elsif matrix[j][i] > target
      j -= 1
    elsif matrix[j][i] < target
      i += 1
    end
  end

  return true if matrix[j][i] == target
  false
end
