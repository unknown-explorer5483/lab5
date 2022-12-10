# frozen_string_literal: true

require_relative './main'
puts 'Введите x:'
x = gets.to_f
puts 'Введите z:'
z = gets.to_f
puts 'Результат:'
puts "#{Calculation.calc(x, z)}\n"
