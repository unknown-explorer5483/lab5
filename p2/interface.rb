# frozen_string_literal: true

require_relative './main'
puts 'Введите длину массива:'
len = gets.to_i
integer_array = []
len.times do |counter|
  puts "Введите #{counter + 1} элемент массива:"
  integer_array.push(gets.to_i)
end
puts 'Исходный массив:'
print integer_array
puts "\nРезультат (индексы):"
puts "#{Find.find_local_maximum(integer_array)}\n"
