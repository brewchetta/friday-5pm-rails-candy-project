class AddForeignKeyToTreats < ActiveRecord::Migration[6.0]
  def change
    add_column :treats, :user_id, :integer
  end
end
