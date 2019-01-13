require 'generic'
require 'increase_in_value'
include IncreaseQuality

# name, sell_in, quality
class AgedBrie < Generic

  def update_quality
    if below_max_quality? and before_sell_in_period_ends?
      increase_quality_by_1
    elsif below_max_quality? and not before_sell_in_period_ends?
      update_quality_by_after_sell_in_amount
    end
  end

  private

  def update_quality_by_after_sell_in_amount
    @quality == 49 ? increase_quality_by_1 : increase_quality_by_2
  end

end
