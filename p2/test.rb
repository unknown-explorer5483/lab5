# frozen_string_literal: true

require_relative 'main'

RSpec.describe Find do
  context 'with normal number array' do
    it 'should give correct result' do
      test_array = [1, 2, 3, 1, 6, 7, 9, 43, 8, 4, 76, 5, 3, 6, 8, 56, 77, 100]
      result_test_array = [1, 4, 13, 14, 15]
      expect(Find.find_local_maximum(test_array)).to eq(result_test_array)
    end
    it 'should give correct result' do
      test_array = [2, 4, 8, 3, 9, 239, 6, 2, 8, 4, 7, 9, 42, 1, 76, 3, 8, 23, 56, 78, 90]
      result_test_array = [1, 16, 18, 19]
      expect(Find.find_local_maximum(test_array)).to eq(result_test_array)
    end
  end
end
