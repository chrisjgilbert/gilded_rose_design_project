class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      item.update_quality
    end
  end

  def update_sell_in
    @items.each do |item|
      item.update_sell_in if item.sell_in > 0
    end
  end
end
