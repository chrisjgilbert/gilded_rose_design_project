require "generic"

class Conjuras < Generic

  def update_quality
    reduce_quality_by_2 if quality_more_than_2?
    reduce_quality_by_1 if quality_is_1?
  end

end
