class Game < ActiveRecord::Base
  has_many :scores

  def top_scores
    scores.where(game_id: id).order(:amount).reverse.first(10)
  end

  def image_name
    name.downcase.tr(" ", "_").gsub(/[^0-9a-z_ ]/i, '')
  end
end
