require 'item'

# name, sell_in, quality
class AgedBrie < Item

  def update_quality
    @quality += 1 if @quality < 50
  end

end
