class Generic < Item

# name, sell_in, quality
  def update_quality
    if after_sell_in?
      @quality <= 1 ? @quality = 0 : @quality -= 2
    else
      @quality <= 1 ? @quality = 0 : @quality -= 1
    end
  end

  private

  def after_sell_in?
    @sell_in <= 0
  end

end
