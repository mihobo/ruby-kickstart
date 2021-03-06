# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  other_word = ""
  string.length.times do | index |
      if ((string[index].downcase.include? "r") && (string[index + 1] != nil))
          other_word << string[index + 1]
      end
    end

  return other_word
end
