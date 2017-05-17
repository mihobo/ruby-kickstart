# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor 'beer'

  def number_words

  @number_words = {
    90 => "ninety",   80 => "eighty",   70 => "seventy",
    60 => "sixty",    50 => "fifty",    40 => "forty",
    30 => "thirty",   20 => "twenty",   19 => "nineteen",
    18 => "eighteen", 17 => "seventeen",16 => "sixteen",
    15 => "fifteen",  14 => "fourteen", 13 => "thirteen",
    12 => "twelve",   11 => "eleven",   10 => "ten",
    9  => "nine",     8  => "eight",    7  => "seven",
    6  => "six",      5  => "five",     4  => "four",
    3  => "three",    2  => "two",      1  => "one",
  }
  end

  def convert(number)
    if number_words.has_key?(number)
      number_words[number]
    else
      [number_words[number - (number % 10)], number_words[number % 10]].join("-")
    end
  end


  def initialize(beer)
    @beer = beer
  end


  def print_song
    get_song(beer)
  end

  def get_song(beer)
    if beer <= 0
      print ''

    else

      while beer != 0
        if beer > 99
          beer = 99
        end
        
        if beer == 1
          puts convert(beer).capitalize + ' bottle of beer on the wall,'"\n" +
               convert(beer).capitalize + ' bottle of beer,'"\n" +
               'Take one down, pass it around,'"\n" +
               'Zero bottles of beer on the wall.'
          beer -= 1
        else
          puts convert(beer).capitalize + ' bottles of beer on the wall,'"\n" +
               convert(beer).capitalize + ' bottles of beer,'"\n" +
               'Take one down, pass it around,'"\n"
              beer -= 1
              if beer == 1
                puts convert(beer).capitalize + ' bottle of beer on the wall.'
              else
                puts convert(beer).capitalize + ' bottles of beer on the wall.'
              end
        end
      end
    end
  end
end
