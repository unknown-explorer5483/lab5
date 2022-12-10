# frozen_string_literal: true

# class for correcting string
class Str
  def self.correct(word_str, num_str)
    words = word_str.split(' ')
    numbers = num_str.split(' ').map(&:to_i)
    words_and_numbers = words.zip(numbers)
    words_and_numbers.map { |word| word[0].slice(0, (word[1])) }.join(' ')
  end
end
