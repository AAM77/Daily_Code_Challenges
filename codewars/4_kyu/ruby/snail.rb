#   https://www.codewars.com/kata/521c2db8ddc89b9b7a0000c1/train/ruby

# # [0,1,2]
# # [3,4,5]
# # [6,7,8]
#
# 0,1,2,  5,  8,7,6,  3,4
#
#                                         # [   0,  1, 2,   3  ]
# # [   4,            [  5, 6,  ]                           7  ]
# # [   8,            [  9, 10, ]                          11  ]
# # [  12,            [ 13, 14, ]                          15  ]
#
# 0,1,2,3
# 7,11
# 15,14,13,12
# 8
# 4,5,6
# 10,9
#
# # For every matrix
#   # (1) goes to the end of the first row   (add all the values in the first row...perhaps shift them off)
#   # (2) goes down the right edge           (add the last value of each row...maybe even pop it off)
#   # (3) goes to the front of the last row  (add all the remaining values of the last row... pop them off)
#   # (4) gooes up the left edge             (add the first value of each row ...if not empty...shift off each value)
#   # (5) Repeat until all are empty or the master array is empty

# For every matrix
# (1) goes to the end of the first row   (add all the values in the first row...perhaps shift them off)
# (2) goes down the right edge           (add the last value of each row...maybe even pop it off)
# (3) goes to the front of the last row  (add all the remaining values of the last row... pop them off)
# (4) gooes up the left edge             (add the first value of each row ...if not empty...shift off each value in reverse)
# (5) Repeat until all are empty or the master array is empty


def snail(matrix)
  snail_array = []

  until matrix.empty?
    snail_array << matrix.shift
    matrix.each { |a| snail_array << a.pop }
    matrix.each { snail_array.push << matrix[matrix.length - 1].pop }.pop
    matrix.reverse.each { |a| snail_array << a.shift }
  end

  snail_array.flatten.compact
end
