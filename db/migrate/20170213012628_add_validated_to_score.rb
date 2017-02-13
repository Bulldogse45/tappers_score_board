class AddValidatedToScore < ActiveRecord::Migration
  def change
    add_column :scores, :validated, :boolean, default: true
  end
end
