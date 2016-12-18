class Game < ActiveRecord::Base
  has_many :scores

  def top_scores
    scores.where(game_id: id).order(:amount).reverse.first(10)
  end
end
