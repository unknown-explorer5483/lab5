# frozen_string_literal: true

# :reek:UtilityFunction

# class for finding local maximum
class Find
  def self.find_local_maximum(array)
    local_maximum_indexes = []
    array.each_with_index do |elem, index|
      next unless elem.even? && (index != 0) && (index < array.length - 1)

      local_maximum_indexes.push(index) if (array[index - 1] < elem) && (elem < array[index + 1])
    end
    local_maximum_indexes
  end
end
