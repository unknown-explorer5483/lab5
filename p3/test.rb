# frozen_string_literal: true

require_relative 'main'

require 'faker'

RSpec.describe Str do
  context 'with normal string and number array' do
    it 'should give correct result' do
      result_words_array = Faker::Lorem.words(number: 5)
      result_words = result_words_array.join(' ')
      initial_words_array = []
      cut_numbers_array = []
      result_words_array.each do |word|
        if Faker::Boolean.boolean(true_ratio: 0.2)
          initial_words_array.push(word)
          cut_numbers_array.push(rand(word.length..word.length + 2))
        else
          cut_numbers_array.push(word.length)
          initial_words_array.push(word + Faker::Lorem.characters(number: rand(1..5)))
        end
      end
      expect(Str.correct(initial_words_array.join(' '), cut_numbers_array.join(' '))).to eq(result_words)
    end
  end
end
