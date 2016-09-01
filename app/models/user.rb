class User < ActiveRecord::Base
  acts_as_authentic

  has_many :scores
  has_many :games, through: :scores
  has_many :groups, through: :group_memberships
  has_many :group_memberships

  def member_of(group)
    group_memberships.where(group_id: group.id).present?
  end
end
