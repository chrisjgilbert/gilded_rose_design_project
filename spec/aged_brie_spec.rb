require 'aged_brie'

describe AgedBrie do

  describe '#update_quality' do
    context 'before sell_in' do
      it 'raises quality by one after a day' do
        aged_brie = AgedBrie.new("Aged Brie", 1, 0)
        aged_brie.update_quality
        expect(aged_brie.quality).to eq(1)
      end

      xit 'never raises quality beyond 50' do
        item = Item.new("Aged Brie", 1, 50)
        GildedRose.new([item]).update_quality
        expect(item.quality).to eq(50)
      end
    end

    context 'after sell_in' do
      xit 'raises quality by two after a day' do
        item = Item.new("Aged Brie", 0, 0)
        GildedRose.new([item]).update_quality
        expect(item.quality).to eq(2)
      end

      xit 'only raises quality to 50 when quality is at 49' do
        item = Item.new("Aged Brie", 0, 49)
        GildedRose.new([item]).update_quality
        expect(item.quality).to eq(50)
      end
    end
  end

end
