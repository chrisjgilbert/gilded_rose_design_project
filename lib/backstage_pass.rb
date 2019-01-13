class BackstagePass < Item

  def update_quality
    if below_max_quality?
       if during_middle_sell_in_period?
         update_middle_sell_in_period_quality
       elsif during_end_sell_in_period?
         @quality += 3
       else
         @quality += 1
       end
    end
  end

  private

  def below_max_quality?
    @quality < 50
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

end
