require 'pry'

# reverse_each_word
# takes in an ardument of a sentence as a string and returns that same sentence with each word reversed in place.

# splitting the string
# iterrate over current words and reverse them
# Join the reversed words using .join

def reverse_each_word(sentence)
  words = sentence.split
  reversed_words = []

  words.each do |word|
    reversed_words << word.reverse
  end

  reversed_words.join(' ')
end

puts reverse_each_word('Hello there, and how are you?')

binding.pry
0

# 0 sets a braek point for our code in irb
