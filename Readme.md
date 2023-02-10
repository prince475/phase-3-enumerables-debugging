<code>require 'pry'</code>


# Using the method reverse_each_word
 takes in an argument of a sentence as a string and returns that same sentence with each word reversed in place.

## pseudocode approach to solving our problem

- Splitting the string
- Iterate over current words and reverse them
- Join the reversed words using .join

## The code

<code>
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
</code>

## refactoring the code above using the .map method

<code>
def reverse_each_word(sentence)
  words = sentence.split

  reversed_words = words.map do |word|
    word.reverse
  end

  reversed_words.join(" ")
end
</code>

## refactoring further using the proc shorthand syntax

<code>
def reverse_each_word(sentence)
  words = sentence.split

  reversed_words = words.map(&:reverse)

  reversed_words.join(" ")
end
</code>

## refactoring even further by taking advantage of method chaining to combine all these to one line

<code>
def reverse_each_word(sentence)
  sentence.split.map(&:reverse).join(" ")
end
</code>
