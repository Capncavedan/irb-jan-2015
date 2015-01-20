require 'stringalyzer'

RSpec.describe Stringalyzer do

  describe '#name_prefix?' do
    it 'is true for Mr' do
      stringalyzer = Stringalyzer.new "Mr Oliver Johnson"
      expect(stringalyzer.name_prefix?).to eq true
    end

    it 'is true for Mrs' do
      stringalyzer = Stringalyzer.new "Mrs Olivia Jones"
      expect(stringalyzer.name_prefix?).to eq true
    end

    it 'is true for Miss' do
      stringalyzer = Stringalyzer.new "Miss Olivia Jones"
      expect(stringalyzer.name_prefix?).to eq true
    end

    it 'is true for Dr' do
      stringalyzer = Stringalyzer.new "Dr Olivia Jones"
      expect(stringalyzer.name_prefix?).to eq true
    end

    it 'is false for a name' do
      stringalyzer = Stringalyzer.new "Olivia Jones"
      expect(stringalyzer.name_prefix?).to eq false
    end
  end



  describe "#name_suffix?" do
    it 'is true for Jr' do
      stringalyzer = Stringalyzer.new "Oliver Johnson Jr"
      expect(stringalyzer.name_suffix?).to eq true
    end

    it 'is true for Sr' do
      stringalyzer = Stringalyzer.new "Oliver Johnson Sr"
      expect(stringalyzer.name_suffix?).to eq true
    end

    it 'is true for III' do
      stringalyzer = Stringalyzer.new "Oliver Johnson III"
      expect(stringalyzer.name_suffix?).to eq true
    end

    it 'is true for a name' do
      stringalyzer = Stringalyzer.new "Oliver Johnson"
      expect(stringalyzer.name_suffix?).to eq false
    end
  end



  describe "#contains?" do
    it "is true when it does" do
      stringalyzer = Stringalyzer.new "Olivia Jones loves fishing"
      expect(stringalyzer.contains?('fishing')).to eq true
    end

    it "is false when it does not" do
      stringalyzer = Stringalyzer.new "Olivia Jones loves fishing"
      expect(stringalyzer.contains?('soccer')).to eq false
    end
  end



  describe "#case_insensitive_equal?" do
    it "is true when they are a match" do
      stringalyzer = Stringalyzer.new "iPhone 5c"
      expect(stringalyzer.case_insensitive_equal?('IPHONE 5C')).to eq true
    end

    it "is false when they are not a match" do
      stringalyzer = Stringalyzer.new "iPhone 6 Plus"
      expect(stringalyzer.case_insensitive_equal?('IPHONE 5C')).to eq false
    end
  end



  describe "#cleanup_whitespace" do
    it "removes leading spaces" do
      stringalyzer = Stringalyzer.new "   AAA Consulting"
      expect(stringalyzer.cleanup_whitespace).to eq "AAA Consulting"
    end

    it "removes trailing spaces" do
      stringalyzer = Stringalyzer.new "Zanzibar's Coffee   "
      expect(stringalyzer.cleanup_whitespace).to eq "Zanzibar's Coffee"
    end

    it "removes multiple spaces" do
      stringalyzer = Stringalyzer.new "Zanzibar's   Coffee      Adventure"
      expect(stringalyzer.cleanup_whitespace).to eq "Zanzibar's Coffee Adventure"
    end
  end


  describe "#all_numeric?" do
    it "is true when all digits" do
      stringalyzer = Stringalyzer.new "999123456"
      expect(stringalyzer.all_numeric?).to eq true
    end

    it "is false when some non-digits" do
      stringalyzer = Stringalyzer.new "At least 999"
      expect(stringalyzer.all_numeric?).to eq false
    end
  end


  describe "#no_numerics?" do
    it "is true when no digits" do
      stringalyzer = Stringalyzer.new "Sally threw the ball"
      expect(stringalyzer.no_numerics?).to eq true
    end

    it "is false when some digits" do
      stringalyzer = Stringalyzer.new "Sally threw the ball 5 times"
      expect(stringalyzer.no_numerics?).to eq false
    end
  end


  describe "#contains_any_of?" do
    it "is true when there is overlap" do
      stringalyzer = Stringalyzer.new "Sally threw the ball against the house 5 times"
      looking_for = %w(threw ball house)
      expect(stringalyzer.contains_any_of?(looking_for)).to eq true
    end

    it "is false when there is no overlap" do
      stringalyzer = Stringalyzer.new "Sally went to the ice cream shop"
      looking_for = %w(threw ball house)
      expect(stringalyzer.contains_any_of?(looking_for)).to eq false
    end
  end
end
