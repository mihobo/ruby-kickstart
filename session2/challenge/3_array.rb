# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    new_word = ""
    each_char.with_index {|letter, index| new_word += letter if index.even? }
    return new_word
  end
end

# answer needs to be a string
# need to push the index numbers of even to an array
# << or +=
#
