module SellInPeriods

  def sell_in_at_0?
    @sell_in <= 0
  end

  def sell_in_above_0?
    @sell_in > 0
  end

  def sell_in_above_10?
    @sell_in > 10
  end

  def sell_in_less_or_equal_to_10_and_more_than_5?
    @sell_in <= 10 and @sell_in > 5
  end

  def sell_in_less_or_equal_to_5_and_more_than_0?
    @sell_in <= 5 and @sell_in> 0
  end

end
