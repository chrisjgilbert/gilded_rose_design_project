require 'item'
require 'decrease_quality_value'
require 'decrease_sell_in_value'
require 'sell_in_periods'
require 'quality_limits'

include DecreaseQuality
include DescreaseSellIn
include SellInPeriods
include QualityLimits

class Generic < Item

  def update_quality
    if sell_in_at_0? and above_min_quality?
      reduce_quality_by_2
    elsif sell_in_above_10? and above_min_quality?
      reduce_quality_by_1
    else
      set_quality_at_0
    end
  end

  def update_sell_in
    reduce_sell_in_by_1
  end

end
