module QualityLimits

  def quality_more_than_2?
    @quality > 2
  end

  def quality_is_1?
    @quality == 1
  end

  def above_min_quality?
    @quality > 0
  end

  def below_max_quality?
    @quality < 50
  end

  def quality_at_49?
    @quality == 49
  end

  def quality_at_48?
    @quality == 48
  end

end
