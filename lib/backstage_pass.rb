class BackstagePass < Item

  def update_quality
    if @quality < 50
       if @sell_in <= 10 and @sell_in > 5
         @quality += 2
       else
         @quality += 1
       end
    end
  end

end
