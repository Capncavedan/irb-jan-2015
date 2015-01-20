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


  describe ".name_suffix?" do
    it 'is true for Jr' do
      str = "Oliver Johnson Jr"
      expect(Stringalyzer.name_suffix?(str)).to eq true
    end

    it 'is true for Sr' do
      str = "Oliver Johnson Sr"
      expect(Stringalyzer.name_suffix?(str)).to eq true
    end

    it 'is true for III' do
      str = "Oliver Johnson III"
      expect(Stringalyzer.name_suffix?(str)).to eq true
    end

    it 'is true for a name' do
      str = "Oliver Johnson"
      expect(Stringalyzer.name_suffix?(str)).to eq false
    end
  end

end
