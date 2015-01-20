require 'stringalyzer'

RSpec.describe Stringalyzer do

  describe '.name_prefix?' do
    it 'is true for Mr' do
      str = "Mr Oliver Johnson"
      expect(Stringalyzer.new(str).name_prefix?).to eq true
    end

    it 'is true for Mrs' do
      str = "Mrs Olivia Jones"
      expect(Stringalyzer.new(str).name_prefix?).to eq true
    end

    it 'is true for Miss' do
      str = "Miss Olivia Jones"
      expect(Stringalyzer.new(str).name_prefix?).to eq true
    end

    it 'is true for Dr' do
      str = "Dr Olivia Jones"
      expect(Stringalyzer.new(str).name_prefix?).to eq true
    end

    it 'is false for a name' do
      str = "Olivia Jones"
      expect(Stringalyzer.new(str).name_prefix?).to eq false
    end
  end


  describe ".name_suffix?" do
    it 'is true for Jr' do
      str = "Oliver Johnson Jr"
      expect(Stringalyzer.new(str).name_suffix?).to eq true
    end

    it 'is true for Sr' do
      str = "Oliver Johnson Sr"
      expect(Stringalyzer.new(str).name_suffix?).to eq true
    end

    it 'is true for III' do
      str = "Oliver Johnson III"
      expect(Stringalyzer.new(str).name_suffix?).to eq true
    end

    it 'is true for a name' do
      str = "Oliver Johnson"
      expect(Stringalyzer.new(str).name_suffix?).to eq false
    end
  end

  describe ".contains?" do
    it "is true when it does" do
      str = "Olivia Jones loves fishing"
      expect(Stringalyzer.new(str).contains?('Jones')).to eq true
    end
  end

end
