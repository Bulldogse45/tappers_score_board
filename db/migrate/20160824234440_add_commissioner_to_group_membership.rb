class AddCommissionerToGroupMembership < ActiveRecord::Migration
  def change
    add_column :group_memberships, :commissioner, :boolean
  end
end
