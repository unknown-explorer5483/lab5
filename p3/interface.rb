# frozen_string_literal: true

require_relative './main'
puts 'Введите строку слов:'
word_string = gets
puts 'Введите строку чисел:'
number_string = gets
puts 'Результат:'
puts "#{Str.correct(word_string, number_string)}\n"
