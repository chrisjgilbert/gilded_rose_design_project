require 'item'

# name, sell_in, quality
class AgedBrie < Item

  def update_quality
    if @quality < 50
      @sell_in > 0 ? @quality += 1 : @quality == 49 ? @quality += 1 : @quality += 2
    end
  end

end
