require_relative "./generic"

class Conjuras < Generic

  def update_quality
    update_quality_by_2 if quality_more_than_2?
    update_quality_by_1 if quality_is_1?
  end

  private

  def quality_more_than_2?
    @quality > 2
  end

  def quality_is_1?
    @quality == 1
  end

end
