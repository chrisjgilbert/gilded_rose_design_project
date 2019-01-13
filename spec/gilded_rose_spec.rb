require 'gilded_rose'
require 'item'

describe GildedRose do

  describe "#update_quality" do

    it "tells the item to update it's quality" do
      aged_brie = double(:aged_brie, name: "aged brie")
      expect(aged_brie).to receive(:update_quality)
      GildedRose.new([aged_brie]).update_quality
    end

    it "does not change the name" do
      aged_brie = double(:aged_brie, name: "aged brie")
      allow(aged_brie).to receive(:update_quality)
      GildedRose.new([aged_brie]).update_quality
      expect(aged_brie.name).to eq "aged brie"
    end

    xit "lowers the sell_in by one after a day" do
      item = Item.new("item", 1, 0)
      GildedRose.new([item]).update_quality
      expect(item.sell_in).to eq 0
    end

    xit "never lowers quality below 0" do
      item = Item.new("item", 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(0)
    end
  end

end
