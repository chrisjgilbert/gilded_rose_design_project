class BackstagePass < Item

  def update_quality
    if @quality < 50
      @quality += 1
    end
  end

end
