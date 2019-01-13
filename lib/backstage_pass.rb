class BackstagePass < Item

#name, sell_in, quality
  def update_quality
    if below_max_quality? and during_start_of_sell_in_period?
      update_start_sell_in_period
    elsif below_max_quality? and during_middle_sell_in_period?
      update_middle_sell_in_period_quality
    elsif below_max_quality? and during_end_sell_in_period?
      update_end_sell_in_period
    elsif @sell_in <= 0
      @quality = 0
    end
  end

  private

  def below_max_quality?
    @quality < 50
  end

  def update_start_sell_in_period
    @quality += 1
  end

  def during_start_of_sell_in_period?
    @sell_in > 10
  end

  def during_middle_sell_in_period?
    @sell_in <= 10 and @sell_in > 5
  end

  def update_middle_sell_in_period_quality
    @quality == 49 ? @quality += 1 : @quality += 2
  end

  def during_end_sell_in_period?
    @sell_in <= 5 and @sell_in> 0
  end

  def update_end_sell_in_period
    @quality == 48 ? @quality += 2 : @quality += 3
  end

end
