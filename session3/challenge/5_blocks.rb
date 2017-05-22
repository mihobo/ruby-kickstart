# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]


def spiral_access(arrays, &block)
  # checks if arrays has no sub-arrays
  if arrays.empty?
    return
  end

# top row
  first_set = arrays[0]
  first_set.each do |x|
    block.call x
  end
  #removes the first array (top row)
  arrays.shift

  if arrays.empty?
    return
  end

# right column
  second_set = arrays.transpose.last
  second_set.each do |x|
    block.call x
  end
  # removes the end values of each array (right column)
  arrays.map(&:pop)

  if arrays.empty?
    return
  end

# bottom row
  third_set = arrays[-1].reverse
  third_set.each do |x|
    block.call x
  end
  # removes the last array (bottom row)
  arrays.pop

  if arrays.empty?
    return
  end

# left column
  fourth_set = arrays.transpose.first.reverse
  fourth_set.each do |x|
    block.call x
  end
  # removes the first values of the arrays (left column)
  arrays.map(&:shift)

  # recursive step
  spiral_access(arrays, &block)


end
