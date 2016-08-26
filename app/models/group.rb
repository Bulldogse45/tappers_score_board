class Group < ActiveRecord::Base

  has_many :users, through: :group_memberships
  has_many :group_memberships

  def commissioner
    group_memberships.where(commissioner: true).first.user
  end
end
