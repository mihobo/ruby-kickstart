# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

require 'prime'

def prime_chars? string_array
  sum = 0
  letters = ""
  string_array.each do |letter|
    letters += letter
  end
    sum = letters.length

    if Prime.prime?(sum)
      return true
    else
      return false
    end

end

# Scribbles:
#    if (sum == 0 || sum == 1)
#      return false
#    elsif ((sum % sum == 0) && (sum / 2 - 1 == 0))<< nope
#      return true
#    else
#      return false
#    end

#end
