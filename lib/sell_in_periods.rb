module SellInPeriods

  def sell_in_at_0?
    @sell_in <= 0
  end

  def sell_in_above_10?
    @sell_in > 0
  end

  def during_start_of_sell_in_period?
    @sell_in > 10
  end

  def during_middle_of_sell_in_period?
    @sell_in <= 10 and @sell_in > 5
  end

  def during_end_of_sell_in_period?
    @sell_in <= 5 and @sell_in> 0
  end

end
