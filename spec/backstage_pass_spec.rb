require 'backstage_pass'

describe BackstagePass do

  describe '#update_quality' do

    context 'when sell_in is greater than 10' do
      it 'increases quality by one after each day' do
        backstage_pass = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 15, 0)
        backstage_pass.update_quality
        expect(backstage_pass.quality).to eq(1)
      end

      it 'never increases quality beyond 50' do
        backstage_pass = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 15, 50)
        backstage_pass.update_quality
        expect(backstage_pass.quality).to eq(50)
      end
    end

    context 'when sell_in is less than or equal to 10 but more than 5' do
      it 'increases quality by two after each day' do
        backstage_pass = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 10, 0)
        backstage_pass.update_quality
        expect(backstage_pass.quality).to eq(2)
      end

      it 'only raises quality to 50 when quality is at 49' do
        backstage_pass = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 10, 49)
        backstage_pass.update_quality
        expect(backstage_pass.quality).to eq(50)
      end
    end

    context 'when sell_in is less than or equal to 5 but more than 0' do
      it 'increases quality by three after each day' do
        backstage_pass = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 5, 0)
        backstage_pass.update_quality
        expect(backstage_pass.quality).to eq(3)
      end

      it 'only raises quality to 50 when quality is at 48 or more' do
        backstage_pass = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 5, 48)
        backstage_pass.update_quality
        expect(backstage_pass.quality).to eq(50)
      end
    end

    context 'before_sell_in' do
      it "lowers the sell_in by one after a day" do
        backstage_pass = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 1, 50)
        backstage_pass.update_quality
        expect(backstage_pass.sell_in).to eq 0
      end
    end

    context 'after sell_in' do
      it 'sets quality to 0' do
        backstage_pass = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 0, 50)
        backstage_pass.update_quality
        expect(backstage_pass.quality).to eq(0)
      end

      it 'does not change quality' do
        backstage_pass = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 0, 0)
        backstage_pass.update_quality
        expect(backstage_pass.quality).to eq(0)
      end
    end
  end

end
