require_relative "./generic"

class Conjuras < Generic

  def update_quality
    @quality -= 2 if @quality > 2
    @quality -= 1 if @quality == 1
  end

end
