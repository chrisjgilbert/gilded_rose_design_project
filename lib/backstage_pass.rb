require 'items_that_increase_in_quality'
class BackstagePass < IncreasingItem

  def update_quality
    if sell_in_above_0? and below_max_quality?
      update_based_on_sell_in_period
    elsif sell_in_at_0?
      set_quality_at_0
    end
  end

  private

  def update_based_on_sell_in_period
    if sell_in_above_10?
      increase_quality_by_1
    elsif sell_in_less_or_equal_to_10_and_more_than_5?
      update_quality_by_1_or_2
    elsif sell_in_less_or_equal_to_5_and_more_than_0?
      update_quality_by_2_or_3
    end
  end

end
