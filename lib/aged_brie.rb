require 'item'

# name, sell_in, quality
class AgedBrie < Item

  def update_quality
    @quality += 1
  end

end
