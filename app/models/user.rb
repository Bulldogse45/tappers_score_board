class User < ActiveRecord::Base
  acts_as_authentic

  has_many :scores
  has_many :games, through: :scores
end
