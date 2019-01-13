require_relative './item'

class Generic < Item

# name, sell_in, quality
  def update_quality
    if after_sell_in? and above_min_quality?
      update_quality_by_2
    elsif before_sell_in? and above_min_quality?
      update_quality_by_1
    else
      set_quality_at_0
    end
  end

  private

  def after_sell_in?
    @sell_in <= 0
  end

  def above_min_quality?
    @quality > 0
  end

  def before_sell_in?
    @sell_in > 0
  end

  def update_quality_by_2
    @quality -= 2
  end

  def update_quality_by_1
    @quality -= 1
  end

  def set_quality_at_0
    @quality = 0
  end

end
