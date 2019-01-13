require 'aged_brie'

describe AgedBrie do

  describe '#update_sell_in' do
    context 'before sell_in' do
      it 'reduces sell_in by 1' do
        aged_brie = AgedBrie.new("Aged Brie", 1, 0)
        aged_brie.update_sell_in
        expect(aged_brie.sell_in).to eq(0)
      end
    end
  end

  describe '#update_quality' do
    context 'before sell_in' do
      it 'raises quality by one after a day' do
        aged_brie = AgedBrie.new("Aged Brie", 1, 0)
        aged_brie.update_quality
        expect(aged_brie.quality).to eq(1)
      end

      it 'never raises quality beyond 50' do
        aged_brie = AgedBrie.new("Aged Brie", 1, 50)
        aged_brie.update_quality
        expect(aged_brie.quality).to eq(50)
      end
    end

    context 'after sell_in' do
      it 'raises quality by two after a day' do
        aged_brie = AgedBrie.new("Aged Brie", 0, 0)
        aged_brie.update_quality
        expect(aged_brie.quality).to eq(2)
      end

      it 'only raises quality to 50 when quality is at 49' do
        aged_brie = AgedBrie.new("Aged Brie", 0, 49)
        aged_brie.update_quality
        expect(aged_brie.quality).to eq(50)
      end
    end
  end

end
