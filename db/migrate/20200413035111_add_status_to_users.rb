class AddStatusToUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :status, :integer, default: 0
    change_column_null :users, :status, false
  end

  def down
    remove_column :users, :status, :integer
  end
end
