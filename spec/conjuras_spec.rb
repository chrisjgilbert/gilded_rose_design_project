require 'conjuras'

describe Conjuras do

  describe '#update_sell_in' do
    it "lowers the sell_in by one after a day" do
      conjuras = Conjuras.new("item", 1, 1)
      conjuras.update_sell_in
      expect(conjuras.sell_in).to eq 0
    end
  end

  describe '#update_quality' do
    it "lowers the quality 2x when during sell in period" do
      conjuras = Conjuras.new("item", 5, 10)
      conjuras.update_quality
      expect(conjuras.quality).to eq 8
    end
  end

end
