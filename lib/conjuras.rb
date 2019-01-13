require_relative "./generic"

class Conjuras < Generic

  def update_quality
    @quality -= 2
  end

end
