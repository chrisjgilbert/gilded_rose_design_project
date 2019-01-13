require 'item'
require 'generic'

# name, sell_in, quality
class AgedBrie < Generic

  def update_quality
    if below_max_quality? and before_sell_in?
      update_quality_by_before_sell_in_amount
    elsif below_max_quality? and not before_sell_in?
      update_quality_by_after_sell_in_amount
    end
  end

  private

  def before_sell_in?
    @sell_in > 0
  end

  def below_max_quality?
    @quality < 50
  end

  def update_quality_by_before_sell_in_amount
    @quality += 1
  end

  def update_quality_by_after_sell_in_amount
    @quality == 49 ? @quality += 1 : @quality += 2
  end

end
