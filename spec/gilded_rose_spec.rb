require 'gilded_rose'
require 'item'

describe GildedRose do

  describe "#update" do
    it "calls update quality" do
      gilded_rose = GildedRose.new("item")
      expect(gilded_rose).to receive(:update_quality)
      gilded_rose.update
    end
  end

  describe "#update_sell_in" do

    it "tells the item to update it's sell in if it is more than 0" do
      aged_brie = double(:aged_brie, sell_in: 1)
      expect(aged_brie).to receive(:update_sell_in)
      GildedRose.new([aged_brie]).update_sell_in
    end

    it "will not tell the item to update it's sell in if it is 0" do
      aged_brie = double(:aged_brie, sell_in: 0)
      expect(aged_brie).not_to receive(:update_sell_in)
      GildedRose.new([aged_brie]).update_sell_in
    end
  end

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
  end

end
