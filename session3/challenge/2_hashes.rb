# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase number
  answer = {}
  1.upto number do |given_num|
    # start from 1 and count up to given_num
    next if given_num.even?
    complete = Array.new(given_num) {|index| index + 1}
    # made index = same num as given_num
    even_nums = complete.select { |index| index.even? }
    answer[given_num] = even_nums
  end
  return answer
end
