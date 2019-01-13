require 'item'

# name, sell_in, quality
class AgedBrie < Item

  def update_quality
    if below_max_quality? and before_sell_in?
      update_before_sell_in_quality
    elsif below_max_quality? and not before_sell_in?
      update_after_sell_in_quality
    end
  end

  private

  def before_sell_in?
    @sell_in > 0
  end

  def below_max_quality?
    @quality < 50
  end

  def update_before_sell_in_quality
    @quality += 1
  end

  def update_after_sell_in_quality
    @quality == 49 ? @quality += 1 : @quality += 2
  end

end
