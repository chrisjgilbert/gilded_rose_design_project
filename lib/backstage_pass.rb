require 'generic'
require 'increase_in_value'
include IncreaseQuality

class BackstagePass < Generic

#name, sell_in, quality
  def update_quality
    if before_sell_in_period_ends? and below_max_quality?
      update_based_on_sell_in_period
    elsif after_sell_in_period?
      set_quality_at_0
    end
  end

  private

  def update_based_on_sell_in_period
    if during_start_of_sell_in_period?
      increase_quality_by_1
    elsif during_middle_of_sell_in_period?
      update_quality_by_middle_of_sell_in_period_amount
    elsif during_end_of_sell_in_period?
      update_quality_by_end_of_sell_in_period_amount
    end
  end

  def during_start_of_sell_in_period?
    @sell_in > 10
  end

  def during_middle_of_sell_in_period?
    @sell_in <= 10 and @sell_in > 5
  end

  def update_quality_by_middle_of_sell_in_period_amount
    @quality == 49 ? increase_quality_by_1 : increase_quality_by_2
  end

  def during_end_of_sell_in_period?
    @sell_in <= 5 and @sell_in> 0
  end

  def update_quality_by_end_of_sell_in_period_amount
    @quality == 48 ? increase_quality_by_2 : increase_quality_by_3
  end

end
