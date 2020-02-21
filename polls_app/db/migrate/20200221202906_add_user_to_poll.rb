class AddUserToPoll < ActiveRecord::Migration[5.2]
  def change
    add_column(:polls, :user_id, :integer, null: false)
  end
end
