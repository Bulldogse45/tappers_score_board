class AddGroupIdToScore < ActiveRecord::Migration
  def change
    add_column :scores, :group_id, :integer
  end
end
