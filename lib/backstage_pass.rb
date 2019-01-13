class BackstagePass < Generic

#name, sell_in, quality
  def update_quality
    if during_sell_in_period? and below_max_quality?
      update_based_on_sell_in_period
    elsif after_sell_in_period?
      set_quality_at_0
    end
  end

  private

  def update_based_on_sell_in_period
    if during_start_of_sell_in_period?
      update_quality_by_start_of_sell_in_period_amount
    elsif during_middle_of_sell_in_period?
      update_quality_by_middle_of_sell_in_period_amount
    elsif during_end_of_sell_in_period?
      update_quality_by_end_of_sell_in_period_amount
    end
  end


  def during_sell_in_period?
    @sell_in > 0
  end

  def after_sell_in_period?
    @sell_in <= 0
  end

  def below_max_quality?
    @quality < 50
  end

  def during_start_of_sell_in_period?
    @sell_in > 10
  end

  def update_quality_by_start_of_sell_in_period_amount
    @quality += 1
  end

  def during_middle_of_sell_in_period?
    @sell_in <= 10 and @sell_in > 5
  end

  def update_quality_by_middle_of_sell_in_period_amount
    @quality == 49 ? @quality += 1 : @quality += 2
  end

  def during_end_of_sell_in_period?
    @sell_in <= 5 and @sell_in> 0
  end

  def update_quality_by_end_of_sell_in_period_amount
    @quality == 48 ? @quality += 2 : @quality += 3
  end

end
