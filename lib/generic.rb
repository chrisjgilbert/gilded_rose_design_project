require 'item' 
require 'decrease_in_value'
require 'decrease_sell_in_value'
include DecreaseQuality
include DescreaseSellIn

class Generic < Item

# name, sell_in, quality
  def update_quality
    if after_sell_in_period? and above_min_quality?
      reduce_quality_by_2
    elsif before_sell_in_period_ends? and above_min_quality?
      reduce_quality_by_1
    else
      set_quality_at_0
    end
  end

  def update_sell_in
    reduce_sell_in_by_1
  end

  private

  def after_sell_in_period?
    @sell_in <= 0
  end

  def before_sell_in_period_ends?
    @sell_in > 0
  end

end
