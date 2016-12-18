class Score < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
  belongs_to :group

  validates :game, presence: true
  validates :user, presence: true
end
