require 'sulfuras'

describe Sulfuras do

  describe "#update_quality" do

    it "does not change the name" do
      sulfuras = Sulfuras.new("foo", 0, 0)
      sulfuras.update_quality
      expect(sulfuras.name).to eq "foo"
    end

    context 'when item is Sulfuras, Hand of Ragnaros' do
      it 'does not change sell_in' do
        sulfuras = Sulfuras.new("Sulfuras, Hand of Ragnaros", 1, 80)
        sulfuras.update_quality
        expect(sulfuras.sell_in).to eq(1)
      end

      it 'does not change quality' do
        sulfuras = Sulfuras.new("Sulfuras, Hand of Ragnaros", 1, 80)
        sulfuras.update_quality
        expect(sulfuras.quality).to eq(80)
      end
    end

  end

end
