describe Sulfuras do

  describe "#update_quality" do

    context 'when item is Sulfuras, Hand of Ragnaros' do
      it 'does not change sell_in' do
        sulfuras = Item.new("Sulfuras, Hand of Ragnaros", 1, 80)
        sulfuras.update_quality
        expect(sulfuras.sell_in).to eq(1)
      end

      it 'does not change quality' do
        sulfuras = Item.new("Sulfuras, Hand of Ragnaros", 1, 80)
        sulfuras.update_quality
        expect(item.quality).to eq(80)
      end
    end

  end

end
