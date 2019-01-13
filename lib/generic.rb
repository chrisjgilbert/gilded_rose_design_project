class Generic < Item

  def update_quality
    if @sell_in <= 0
      @quality -= 2
    else
      @quality -= 1
    end
  end

end
