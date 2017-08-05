class AddBotIdToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :bot_id, :integer
  end
end
