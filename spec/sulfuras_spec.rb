describe Sulfuras do

  describe "#update_quality" do

    context 'when item is Sulfuras, Hand of Ragnaros' do
      it 'does not change sell_in' do
        item = Item.new("Sulfuras, Hand of Ragnaros", 1, 80)
        GildedRose.new([item]).update_quality
        expect(item.sell_in).to eq(1)
      end

      it 'does not change quality' do
        item = Item.new("Sulfuras, Hand of Ragnaros", 1, 80)
        GildedRose.new([item]).update_quality
        expect(item.quality).to eq(80)
      end
    end

  end
  
end
