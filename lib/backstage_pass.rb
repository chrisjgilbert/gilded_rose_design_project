class BackstagePass < Item

  def update_quality
    if below_max_quality?
       if sell_in_less_than_10_and_more_than_5?
         update_middle_sell_in_period_quality
       else
         @quality += 1
       end
    end
  end

  private

  def below_max_quality?
    @quality < 50
  end

  def sell_in_less_than_10_and_more_than_5?
    @sell_in <= 10 and @sell_in > 5
  end

  def update_middle_sell_in_period_quality
    @quality == 49 ? @quality += 1 : @quality += 2
  end

end
