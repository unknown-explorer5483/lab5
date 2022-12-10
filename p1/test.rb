# frozen_string_literal: true

require_relative 'main'

RSpec.describe Calculation do
  context 'with normal numbers' do
    it 'should give correct result on x=5,z=6' do
      expect(Calculation.calc(5, 6)).to be_within(0.001).of(-51.54529506270192)
    end
    it 'should give an error at x=5,z=5' do
      expect { Calculation.calc(5, 5) }.to raise_error("Can't divide by zero")
    end
  end
end
