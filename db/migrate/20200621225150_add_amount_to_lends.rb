class AddAmountToLends < ActiveRecord::Migration
  def change
    add_column :lends, :amount, :integer
  end
end
