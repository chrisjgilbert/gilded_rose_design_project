require 'generic'

describe Generic do

  describe '#update_quality' do

    context 'before sell_in' do
      it 'lowers quality by one after one day' do
        generic = Generic.new("item", 1, 1)
        generic.update_quality
        expect(generic.quality).to eq(0)
      end

      it 'quality cant go lower than 0' do
        generic = Generic.new("item", 4, 0)
        generic.update_quality
        expect(generic.quality).to eq(0)
      end

      it "lowers the sell_in by one after a day" do
        generic = Generic.new("item", 1, 1)
        generic.update_quality
        expect(generic.sell_in).to eq 0
      end
    end

    context 'after sell_in' do
      it 'lowers quality by two after a day' do
        generic = Generic.new("item", 0, 2)
        generic.update_quality
        expect(generic.quality).to eq(0)
      end

      it 'quality cant go lower than 0' do
        generic = Generic.new("item", 0, 0)
        generic.update_quality
        expect(generic.quality).to eq(0)
      end
    end
  end

end
