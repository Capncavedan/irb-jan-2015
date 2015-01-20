require 'stringalyzer'

RSpec.describe Stringalyzer do

  describe '.name_prefix?' do
    it 'is true for Mr' do
      str = "Mr Oliver Johnson"
      expect(Stringalyzer.name_prefix?(str)).to eq true
    end

    it 'is true for Mrs' do
      str = "Mrs Olivia Jones"
      expect(Stringalyzer.name_prefix?(str)).to eq true
    end

    it 'is true for Ms' do
      str = "Ms Olivia Jones"
      expect(Stringalyzer.name_prefix?(str)).to eq true
    end

    it 'is true for Miss' do
      str = "Miss Olivia Jones"
      expect(Stringalyzer.name_prefix?(str)).to eq true
    end

    it 'is true for Dr' do
      str = "Dr Olivia Jones"
      expect(Stringalyzer.name_prefix?(str)).to eq true
    end

    it 'is false for a name' do
      str = "Olivia Jones"
      expect(Stringalyzer.name_prefix?(str)).to eq false
    end
  end

end
