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
  end

end
