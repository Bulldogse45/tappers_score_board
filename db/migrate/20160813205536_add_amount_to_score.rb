class AddAmountToScore < ActiveRecord::Migration
  def change
    add_column :scores, :amount, :integer
  end
end
