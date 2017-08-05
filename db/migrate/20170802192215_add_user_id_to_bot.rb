class AddUserIdToBot < ActiveRecord::Migration[5.1]
  def change
    add_column :bots, :user_id, :integer
  end
end
