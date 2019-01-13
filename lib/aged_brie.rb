require 'generic'
require 'increase_quality_value'
include IncreaseQuality

# name, sell_in, quality
class AgedBrie < Generic

  def update_quality
    if below_max_quality? and sell_in_above_0?
      increase_quality_by_1
    elsif below_max_quality? and not sell_in_above_0?
      update_quality_by_1_or_2
    end
  end

  private

  def update_quality_by_1_or_2
    quality_at_49? ? increase_quality_by_1 : increase_quality_by_2
  end

end
