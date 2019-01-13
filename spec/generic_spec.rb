require 'generic'

describe Generic do

  describe '#update_quality' do

    context 'when item is generic' do
      context 'before sell_in' do
        it 'lowers quality by one after one day' do
          generic = Generic.new("item", 1, 1)
          generic.update_quality
          expect(generic.quality).to eq(0)
        end
      end

      context 'after sell_in' do
        it 'lowers quality by two after a day' do
          generic = Generic.new("item", 0, 2)
          generic.update_quality
          expect(generic.quality).to eq(0)
        end
      end
    end
  end

end
