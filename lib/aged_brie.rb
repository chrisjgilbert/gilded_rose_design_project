require 'item'

# name, sell_in, quality
class AgedBrie < Item

  def update_quality
    if @quality < 50
      if @sell_in > 0
        @quality =+1
      else
        @quality +=2
      end
    end
  end

end
