module DecreaseQuality

  def reduce_quality_by_2
    @quality -= 2
  end

  def reduce_quality_by_1
    @quality -= 1
  end

  def above_min_quality?
    @quality > 0
  end

  def set_quality_at_0
    @quality = 0
  end

end
