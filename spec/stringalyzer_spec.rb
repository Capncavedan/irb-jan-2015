require 'stringalyzer'

RSpec.describe Stringalyzer do
  describe '#add' do
    it 'returns the sum of its arguments' do
      expect(Stringalyzer.new.add(1, 2)).to eq(3)
    end
  end
end
