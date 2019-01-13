module IncreaseQuality

  def increase_quality_by_1
    @quality += 1
  end

  def increase_quality_by_2
    @quality += 2
  end

  def increase_quality_by_3
    @quality += 3
  end

  def update_quality_by_1_or_2
    quality_at_49? ? increase_quality_by_1 : increase_quality_by_2
  end

  def update_quality_by_2_or_3
    quality_at_48? ? increase_quality_by_2 : increase_quality_by_3
  end

end
